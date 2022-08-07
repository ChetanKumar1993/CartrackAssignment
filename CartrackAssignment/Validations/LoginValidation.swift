//
//  LoginValidation.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 07/08/22.
//

import Foundation

struct LoginValidation {
    
    func validate(request: LoginInputModel) -> ValidationResponse {
        
        guard !request.userName.isEmpty else {
            return ValidationResponse(message: "Username cannot be empty.", isValid: false)
        }

        guard !request.password.isEmpty else {
            return ValidationResponse(message: "Password cannot be empty.", isValid: false)
        }
        
        guard !request.userName.isEmpty  && !request.password.isEmpty else {
            return ValidationResponse(message: "Username and password cannot be empty.", isValid: false)
        }
        
        return ValidationResponse(message: nil, isValid: true)
    }
}

struct ValidationResponse {
    let message: String?
    let isValid: Bool
}
