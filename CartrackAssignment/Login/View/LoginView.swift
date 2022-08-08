//
//  LoginView.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 07/08/22.
//

import SwiftUI
import AlertKit

struct LoginView: View {
    
    @State private var loginModel = LoginInputModel()
    @StateObject var alertManager = AlertManager()
    @StateObject var loginVM = LoginViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    Image("loginIcon").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                        .frame(height: 100.0)
                    
                    VStack(alignment: .leading) {
                        TextInputField(_title: "Username", text: $loginModel.userName)
                        Spacer()
                            .frame(height: 20.0)
                        TextInputField(_title: "Password", text: $loginModel.password,isSecure: true)
                    }
                    Spacer()
                        .frame(height: 100.0)
                    
                    Button(action: {
                        loginVM.authenticateUser(withRequest: loginModel) { msg in
                            alertManager.show(dismiss: .custom(title: "Cartrack", message: msg ?? ""))
                        }
                    }) {
                        Text("Login")
                            .customFont(withStyle:.Bold, withSize: 20)
                            .foregroundColor(.white)
                    }.padding()
                     .frame(width: UIScreen.main.bounds.width - 50, height: 40)
                     .background(Color.orange)
                     .cornerRadius(20)
                    
                    NavigationLink(destination: UsersListView().navigationBarTitle("")
                        .navigationBarHidden(true),
                                   isActive: $loginVM.isValidUser) { EmptyView() }
                }.padding()
                 .uses(alertManager)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
