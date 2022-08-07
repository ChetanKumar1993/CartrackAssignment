//
//  LoginViewModel.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 08/08/22.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    private let validation = LoginValidation()
    @Published var responseMsg:String?
    @Published var isValidUser:Bool = false

    
    /// Method to authenticate user from sqllite dattabase
    /// - Parameter request: Input model
    func authenticateUser(withRequest request: LoginInputModel) {
        let validationResult = validation.validate(request: request)
        if(validationResult.isValid) {
            
        }else {
            responseMsg = validationResult.message
        }
    }

}
