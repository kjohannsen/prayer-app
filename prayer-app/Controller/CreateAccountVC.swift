//
//  CreateAccountVC.swift
//  prayer-app
//
//  Created by Kyle Johannsen on 1/6/19.
//  Copyright © 2019 Kyle Johannsen. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    

    // MARK: - Actions
    
    @IBAction func createAccountButtonPressed(_ sender: Any) {
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension CreateAccountVC: UITextFieldDelegate {
    
}
