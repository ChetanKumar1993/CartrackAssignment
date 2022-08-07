//
//  UserDetailModel.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import Foundation

enum CellType {
    case userDetail, map
}

struct UserDetailModel {
    var title:String
    var value:String?
    var latitude: Double
    var longitude: Double
    var cellType: CellType
    var id = UUID()
    
    init(title:String, value:String?, type: CellType = .userDetail, lat: Double = -37.3159, long: Double = 81.1496) {
        self.title = title
        self.value = value
        self.cellType = type
        self.latitude = lat
        self.longitude = long
    }
}

