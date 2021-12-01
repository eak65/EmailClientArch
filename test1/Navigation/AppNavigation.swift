//
//  AppNavigation.swift
//  GmailArchitecture
//
//  Created by Ethan Keiser on 11/28/21.
//

import Foundation
import UIKit

class AppNavigation : LoginUseCaseOutput {
    let navigationController : UINavigationController
    func loginSuccess() {
        navigationController.pushViewController(factory.makeEmailController(nav: self), animated: true)
    }
    
    func loginFailure() {
        
    }
    
    let factory : Factory
    init(nav: UINavigationController, factory: Factory) {
        self.factory = factory
        self.navigationController = nav
        self.navigationController.pushViewController(factory.makeLoginController(nav: self), animated: true)
    }
    
    
    
    
    
    
}
