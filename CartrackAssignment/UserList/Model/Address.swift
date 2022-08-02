//
//  Address.swift
//
//  Created by chetan kumar on 01/08/22
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Address: Decodable {

  var street: String?
  var geo: Geo?
  var zipcode: String?
  var suite: String?
  var city: String?

}

struct Geo: Decodable {
    
  var lng: String?
  var lat: String?

}
