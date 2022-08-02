//
//  UIFontExtension.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import Foundation
import SwiftUI

extension Font {
    enum CustomFontFamily {
        case Gibson
        case Other
        
        var name: String {
            switch self {
            case .Gibson:
                return "Gibson"
            case .Other:
                return ""
            }
        }
    }
    
    struct GibsonFontStyle {
        static let Bold = "Bold"
        static let BoldItalic = "BoldItalic"
        static let Regular = "Regular"
        static let RegularItalic = "RegularItalic"
    }
    
    public enum FontStyle {
        case Bold
        case BoldItalic
        case Regular
        case RegularItalic
        
        var name: String {
            switch self {
            case .Bold:
                return GibsonFontStyle.Bold
            case .BoldItalic:
                return GibsonFontStyle.BoldItalic
            case .Regular:
                return GibsonFontStyle.Regular
            case .RegularItalic:
                return GibsonFontStyle.RegularItalic
            }
        }
        
    }
}
