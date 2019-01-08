//
//  LoginVC.swift
//  prayer-app
//
//  Created by Kyle Johannsen on 1/6/19.
//  Copyright © 2019 Kyle Johannsen. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: Actions
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if emailTextField.text != nil && passwordTextField != nil {
            AuthService.instance.loginUser(withEmail: emailTextField.text!, andPassword: passwordTextField.text!) { (success, loginError) in
                if success {
                    // ???
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
            }
        }
    }
    
    @IBAction func createAccountButtonPressed(_ sender: Any) {
        let createAccountVC = storyboard?.instantiateViewController(withIdentifier: "CreateAccountVC")
        present(createAccountVC!, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
    }
    

}
