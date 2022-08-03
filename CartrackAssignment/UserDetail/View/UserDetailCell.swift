//
//  UserDetailCell.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import SwiftUI

struct UserDetailCell: View {
    
    var title:String
    var value:String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0){
            Text(title)
                   .font(Font.custom("Roboto-Regular", size: 14))
                   .foregroundColor(.gray)
            Text(value)
                   .font(Font.custom("Roboto-Regular", size: 16))
                   .foregroundColor(.black)
        }
    }
}

struct UserDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailCell(title: "")
    }
}
