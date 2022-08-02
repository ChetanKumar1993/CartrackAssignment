//
//  UsersListView.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import SwiftUI

struct UsersListView: View {
    
    @ObservedObject var userListViewModel = UserListViewModel()

    var body: some View {
        ZStack {
            List {
                ForEach(userListViewModel.userList, id: \.id) {
                    userModel in
                    UserCell(user: userModel)
                }
            }
        }.onAppear {
            userListViewModel.getUserList()
        }
        
    }
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
    }
}
