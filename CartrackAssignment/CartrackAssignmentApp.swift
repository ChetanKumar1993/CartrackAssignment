//
//  CartrackAssignmentApp.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import SwiftUI

@main
struct CartrackAssignmentApp: App {
    
    init() {
        FileStorageManager.shared.copyDatabase("UsersData.sqlite")
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
