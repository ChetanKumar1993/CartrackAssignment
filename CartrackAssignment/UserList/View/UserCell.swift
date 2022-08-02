//
//  UserCell.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import SwiftUI

struct UserCell: View {
    var user: Usermodel?
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(user?.name ?? "").multilineTextAlignment(.leading).padding([.top, .bottom, .trailing]).customFont(withStyle:.Bold, withSize: 20)
                Spacer()
                Image("ic_right_arrow")
                    .resizable().resizable()
                    .frame(width: 20, height: 20, alignment: .center)
            }
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
