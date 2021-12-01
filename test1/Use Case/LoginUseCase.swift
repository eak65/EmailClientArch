//
//  LoginUseCase.swift
//  GmailArchitecture
//
//  Created by Ethan Keiser on 11/22/21.
//

import Foundation

class LoginUseCase {
    let output : LoginUseCaseOutput
    let api : AuthenticationApi
    init(output: LoginUseCaseOutput, api:AuthenticationApi) {
        self.output = output
        self.api = api
    }
    
    func login(userName: String, password:String) {
        self.api.login(username: "user", password: "pass") { response in
            output.loginSuccess()
        } failure: { error in
            output.loginFailure()
        }

        
    }
}
