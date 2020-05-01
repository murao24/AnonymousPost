//
//  RegisterViewController.swift
//  AnonymousPost
//
//  Created by 村尾慶伸 on 2020/04/30.
//  Copyright © 2020 村尾慶伸. All rights reserved.
//

import UIKit
import Firebase


class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        emailTextField.addBorderAll(color: .black)
        passwordTextField.addBorderAll(color: .black)
    }
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
                if let error = error {
                    print(error.localizedDescription)
                    self.present(alert: .errorAlert(message: "もう一度", error: error))
                } else {
                    self.performSegue(withIdentifier: "RegisterToHome", sender: self)
                }
            }
        }

    }
    


}
