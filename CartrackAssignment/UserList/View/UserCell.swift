//
//  UserCell.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import SwiftUI

struct UserCell: View {
    var name: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(name ?? "").multilineTextAlignment(.leading).padding([.top, .bottom, .trailing]).customFont(withStyle:.Bold, withSize: 20)
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
