//
//  LoginFactory.swift
//  GmailArchitecture
//
//  Created by Ethan Keiser on 11/22/21.
//

import Foundation
import UIKit

class LoginFactory {
    func makeLoginController() -> UIViewController {
        let basicAuthentication = BasicLoginService()
        let controller = LoginViewController(nibName: "LoginViewController", bundle: nil)
        let useCase = LoginUseCase(output: LoginUseCaseComposer(outputs: [CrashlyticsWrapper(),LoginPresenter(loginController: controller)]),api: basicAuthentication)
        controller.loginService = {username, password in
            useCase.login(userName: username, password: password)
        }
        return controller
    }
}
