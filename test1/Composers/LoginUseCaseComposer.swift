//
//  LoginUseCaseComposer.swift
//  GmailArchitecture
//
//  Created by Ethan Keiser on 11/22/21.
//

import Foundation

struct LoginUseCaseComposer : LoginUseCaseOutput {
    let outputs : [LoginUseCaseOutput]
    func loginSuccess() {
        outputs.forEach {
            $0.loginSuccess()
        }
    }
    
    func loginFailure() {
        outputs.forEach {
            $0.loginFailure()
        }
    }
}
