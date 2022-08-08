//
//  LoginViewModel.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 08/08/22.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    private let validation = LoginValidation()
    @Published var isValidUser:Bool = false

    /// Method to authenticate user from sqllite dattabase
    /// - Parameter request: Input model
    func authenticateUser(withRequest request: LoginInputModel, onCompletion responseMsgHandller: @escaping ((String?)->())) {
        let validationResult = validation.validate(request: request)
        if(validationResult.isValid) {
            let isUserFound = DBManager.shared.fetchRecordFromDatabase(forUser: request.userName, password: request.password)
            if isUserFound {
                isValidUser = isUserFound
            }else {
                responseMsgHandller("User not found!!")
            }
        }else {
            responseMsgHandller(validationResult.message)
        }
    }
}
