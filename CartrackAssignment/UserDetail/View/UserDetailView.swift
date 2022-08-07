//
//  UserDetailView.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import SwiftUI
import MapKit

struct UserDetailView: View {
    
    @ObservedObject var userDetailViewModel = UserDetailViewModel()
    @State var dataSource = [UserDetailModel]()
    var user: Usermodel?

    var body: some View {
        ZStack {
            VStack {
                List {
                    ForEach(dataSource, id: \.id) {
                        userModel in
                        if userModel.cellType == .map {
                            UserMapAddressCell(coordinate: CLLocationCoordinate2D(latitude: userModel.latitude, longitude: userModel.longitude))
                        }else {
                            UserDetailCell(title: userModel.title, value: userModel.value ?? "")
                        }
                    }
                }
            }
            .navigationTitle(user?.name ?? "")
        }.onAppear {
           dataSource = userDetailViewModel.createDataSourceForTransactionDetail(model: user)
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView()
    }
}
