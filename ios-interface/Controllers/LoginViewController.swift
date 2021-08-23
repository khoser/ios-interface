//
//  ViewController.swift
//  ios-interface
//
//  Created by Олег on 16.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "LoginSegue" {
            return CheckAuth()
        } else {
            return false
        }
    }
    
    func CheckAuth() -> Bool {
        let login = self.loginTextField.text!
        let password = self.passwordTextField.text!
        
        if login == "user" && password == "12345" {
            return true
        } else {
            return false
        }
    }
}

