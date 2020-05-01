//
//  LoginViewController.swift
//  AnonymousPost
//
//  Created by 村尾慶伸 on 2020/04/30.
//  Copyright © 2020 村尾慶伸. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        emailTextField.text = "1@2.com"
        passwordTextField.text = "testuser1"
        emailTextField.addBorderAll(color: .white)
        passwordTextField.addBorderAll(color: .white)
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
                if let error = error {
                    print(error.localizedDescription)
                    self.present(alert: .errorAlert(message: "emailとpasswordが一致しません。", error: error) { _ in
                        self.emailTextField.text = ""
                        self.passwordTextField.text = ""
                    })
                } else {
                    self.performSegue(withIdentifier: "LoginToHome", sender: self)
                }
            }
        }

    }
}
