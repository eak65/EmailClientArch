//
//  LoginFactory.swift
//  GmailArchitecture
//
//  Created by Ethan Keiser on 11/22/21.
//

import Foundation
import UIKit
protocol ViewControllerFactory {
    func makeLoginController() -> UIViewController
    func makeEmailController(nav: AppNavigation)  -> UITableViewController
    func makeDetailEmailController(nav: AppNavigation) -> UITableViewController

}

class Factory {
    func makeLoginController(nav: LoginUseCaseOutput) -> UIViewController {
        let basicAuthentication = BasicLoginService()
        let controller = LoginViewController(nibName: "LoginViewController", bundle: nil)
        let useCase = LoginUseCase(output: LoginUseCaseComposer(outputs: [CrashlyticsWrapper(),LoginPresenter(),nav]),api: basicAuthentication)
        
        controller.loginService = { username, password in
            useCase.login(userName: username, password: password)
        }
        
        return controller
    }
    
    func makeEmailController(nav: AppNavigation)  -> UITableViewController {
        let controller = EmailTableViewController()
        let feedComposer = FeedComposer(local: LocalEmailFeedApi(), remote: RemoteEmailFeedApi())
        let presenter = EmailTableViewPresenter(view: controller, api: feedComposer)
        
        // how to cut across
        controller.loadFeed = {
            presenter.loadData()
        }
        
        controller.selectEmail = { email in
            nav.navigationController.pushViewController(nav.factory.makeDetailEmailController(nav: nav),animated: true)
        }
        
        return controller
    }
    func makeDetailEmailController(nav: AppNavigation) -> UITableViewController {
        return UITableViewController()
    }
}
