//
//  LoginViewController.swift
//  GmailArchitecture
//
//  Created by Ethan Keiser on 11/28/21.
//

import UIKit

class LoginViewController: UIViewController {
    func displayLoginSuccess() {
        
    }
    
    func displayLoginFailure() {
        
    }
    
    var loginService : ((String,String) -> ())?
 

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    @IBAction func button_touchUpInside(_ sender: Any) {
        loginService?("","")
    }
}
