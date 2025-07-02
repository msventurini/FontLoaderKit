//
//  CustomFont.swift
//  VentuFonts
//
//  Created by Matheus Silveira Venturini on 02/07/25.
//

import Foundation
import SwiftUI

public struct CustomFont : Sendable {
    
    private let fontRegister: FontRegister
    
    public init(at bundle: Bundle, with fontExtension: FontExtension) {
        self.fontRegister = FontRegister(at: bundle, with: fontExtension)
    }
    
    public func withAttributes(weight: Font.Weight = .regular, sized size: CGFloat? = nil, relativeTo style: Font.TextStyle = .body) -> Font {
        let currentSize: CGFloat = size ?? UIFont.preferredFont(forTextStyle: style.getUIFontTextStyle()).pointSize
        return Font.custom(fontRegister.familyName, size: currentSize, relativeTo: style)
            .weight(weight)
    }
    
    public func withStyle(style: Font.TextStyle = .body) -> Font {
        let currentSize: CGFloat = UIFont.preferredFont(forTextStyle: style.getUIFontTextStyle()).pointSize
        return Font.custom(fontRegister.familyName, size: currentSize, relativeTo: style)
    }
}
