//
//  LoginInputModel.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 07/08/22.
//

import Foundation

struct LoginInputModel {
    var userName: String
    var password:String
    
    init(_userName: String = "", _password: String = "") {
        userName = _userName
        password = _password
    }
}
