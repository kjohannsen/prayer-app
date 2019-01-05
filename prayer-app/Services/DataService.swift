//
//  DataService.swift
//  prayer-app
//
//  Created by Kyle Johannsen on 1/5/19.
//  Copyright © 2019 Kyle Johannsen. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataService {
    static let instance = DataService()
    
    public private(set) var _REF_BASE = DB_BASE
    public private(set) var _REF_USERS = DB_BASE.child("users")
    public private(set) var _REF_PRAYER_RECIPIENTS = DB_BASE.child("recipients")
    public private(set) var _REF_PRAYER_REQUESTS = DB_BASE.child("requests")
    public private(set) var _REF_CHANNELS = DB_BASE.child("channels")
    
    func createDBUser(uid: String, userData: Dictionary<String, Any>) {
        _REF_USERS.child(uid).updateChildValues(userData)
    }
}
