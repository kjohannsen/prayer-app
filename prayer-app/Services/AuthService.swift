//
//  AuthService.swift
//  prayer-app
//
//  Created by Kyle Johannsen on 1/6/19.
//  Copyright © 2019 Kyle Johannsen. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email: String, andPassword password: String, userRegistrationComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            guard let user = authResult?.user else {
                userRegistrationComplete(false, error)
                return
            }
            let userData = ["provider": user.providerID, "email": user.email]
            DataService.instance.createDBUser(uid: user.uid, userData: userData)
            userRegistrationComplete(true, nil)
        }
    }
    
    func loginUser(withEmail email: String, andPassword password: String, userLoginComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().signIn(withEmail: email, link: password) { (authResult, error) in
            if error != nil {
                userLoginComplete(false, error)
                return
            } else {
                userLoginComplete(true, nil)
            }
        }
        
    }
}
