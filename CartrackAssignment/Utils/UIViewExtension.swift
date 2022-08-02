//
//  UIViewExtension.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import Foundation
import SwiftUI

struct CustomFont: ViewModifier {
    var fontFamily: Font.CustomFontFamily
    var style: Font.FontStyle
    var size: CGFloat
    
    func body(content: Content) -> some View {
        let fontName = fontFamily.name + "-" + style.name
        content.font(Font.custom(fontName, size: size))
    }
}

extension View {
    func customFont(withFontFamily fontFamily: Font.CustomFontFamily = .Gibson, withStyle style: Font.FontStyle = .Regular, withSize size: CGFloat) -> some View {
        return self.modifier(CustomFont(fontFamily: fontFamily, style: style, size: size))
    }
}
