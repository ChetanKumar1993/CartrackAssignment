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
        NavigationView {
            ZStack {
                List {
                    ForEach(userListViewModel.userList, id: \.id) {
                        userModel in
                        NavigationLink(destination: UserDetailView(user: userModel)) {
                            UserCell(name: userModel.name)
                        }
                    }
                }
                .navigationTitle("Users List")
            }.onAppear {
                userListViewModel.getUserList()
            }
        }
    }
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
    }
}
