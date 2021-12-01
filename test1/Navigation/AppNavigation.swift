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
        
    }
    
    func loginFailure() {
        
    }
    
    let factory : LoginFactory
    init(nav: UINavigationController, factory: LoginFactory) {
        self.factory = factory
        self.navigationController = nav
        self.navigationController.pushViewController(factory.makeLoginController(), animated: true)
    }
    
    
    
    
    
}
