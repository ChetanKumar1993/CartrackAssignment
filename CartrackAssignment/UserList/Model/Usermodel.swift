//
//  Usermodel.swift
//
//  Created by chetan kumar on 01/08/22
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Usermodel: Decodable, Identifiable {
    
  var website: String?
  var name: String?
  var id: Int?
  var company: Company?
  var username: String?
  var email: String?
  var address: Address?
  var phone: String?

}
