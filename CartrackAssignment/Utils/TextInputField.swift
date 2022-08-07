//
//  TextInputField.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 07/08/22.
//

import SwiftUI

struct TextInputField: View {
    
    var title: String
    @Binding var text: String
    @State var isSecure: Bool
    
    init (_title: String, text: Binding<String>, isSecure: Bool = false) {
        self.title = _title
        self._text = text
        self.isSecure = isSecure
    }
    var body: some View {
        ZStack(alignment: .leading) {
            Text(title)
                .foregroundColor(text.isEmpty ? Color(.placeholderText) : Color(hex: "#959DAD"))
                .offset(y: text.isEmpty ? 0 : -20)
                .scaleEffect(text.isEmpty ? 1: 0.9, anchor: .leading)
                .font(.system(size:14))
            
            HStack{
                Group{
                    if isSecure{
                        SecureField("", text: $text)
                            .background(.clear)
                    }else{
                        TextField("", text: $text)
                            .background(.clear)
                    }
                }.animation(.easeInOut(duration: 0.2), value: isSecure)
                
                if title == "Password" {
                    Button(action: {
                        isSecure.toggle()
                    }, label: {
                        Image(systemName: !isSecure ? "eye.slash" : "eye" ).foregroundColor(.black)
                    })
                }
            }
        }.padding(17)
            .animation(.default, value: true)
            .background(RoundedRectangle(cornerRadius: 5.0).stroke(Color(hex: "#EF6C0A")))
    }
}

struct TextInputField_Previews: PreviewProvider {
    
    @State static var nameTest: String = "chetan"
    
    static var previews: some View {
        TextInputField(_title: "First Name", text: $nameTest)
    }
}

