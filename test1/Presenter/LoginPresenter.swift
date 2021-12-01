//
//  LoginPresenter.swift
//  GmailArchitecture
//
//  Created by Ethan Keiser on 11/22/21.
//

import Foundation

class LoginPresenter: LoginUseCaseOutput {
    let controller : LoginViewController
    init(loginController: LoginViewController) {
        controller = loginController
    }

    func loginSuccess() {
        print("Login Presenter")
    }
    
    func loginFailure() {
        
    }
    
    
    
    
}
