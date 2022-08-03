//
//  UserDetailViewModel.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import Foundation

class UserDetailViewModel: ObservableObject {
    
    
    /// Functtion to create User Detail DataSource
    /// - Parameter model: UserMdel
    /// - Returns: Array
    func createDataSourceForTransactionDetail(model:Usermodel?) -> [UserDetailModel] {
        guard let model = model else { return [UserDetailModel]() }
        var arrDetails = [UserDetailModel]()
        
        let userName = UserDetailModel(title: "Username", value: model.username)
        arrDetails.append(userName)
        
        let email = UserDetailModel(title: "Email", value: model.email)
        arrDetails.append(email)
        
        let phone = UserDetailModel(title: "Phone Number", value: model.phone)
        arrDetails.append(phone )
        
        let website = UserDetailModel(title: "Website", value: model.website)
        arrDetails.append(website)
        
        let company = UserDetailModel(title: "Company Name", value: model.company?.name)
        arrDetails.append(company)
        
        let addressDetail = (model.address?.suite ?? "") + ", \(model.address?.street ?? "")" + ",  \(model.address?.city ?? "")"
        let address = UserDetailModel(title: "Address", value: addressDetail)
        arrDetails.append(address)
        
        if let latitude = model.address?.geo?.lat,
              let longitude = model.address?.geo?.lng  {
            let mapAddress = UserDetailModel(title: "", value: "", type: .map, lat: Double(latitude) ?? -37.3159, long: Double(longitude) ?? 81.1496)
            arrDetails.append(mapAddress)
        }
        return arrDetails
    }
}
