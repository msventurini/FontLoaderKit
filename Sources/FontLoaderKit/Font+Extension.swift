//
//  Font+Extension.swift
//  VentuFonts
//
//  Created by Matheus Silveira Venturini on 02/07/25.
//

import SwiftUI
#if os(iOS)
typealias NativeFont = UIFont
#elseif os(macOS)
typealias NativeFont = NSFont
#endif


internal extension Font.TextStyle {
    
    func getUIFontTextStyle() -> NativeFont.TextStyle {
        switch self {
        case .largeTitle:
            NativeFont.TextStyle.largeTitle
        case .title:
            NativeFont.TextStyle.title1
        case .title2:
            NativeFont.TextStyle.title2
        case .title3:
            NativeFont.TextStyle.title3
        case .headline:
            NativeFont.TextStyle.headline
        case .subheadline:
            NativeFont.TextStyle.subheadline
        case .body:
            NativeFont.TextStyle.body
        case .callout:
            NativeFont.TextStyle.callout
        case .footnote:
            NativeFont.TextStyle.footnote
        case .caption:
            NativeFont.TextStyle.caption1
        case .caption2:
            NativeFont.TextStyle.caption2
        @unknown default:
            NativeFont.TextStyle.body
        }
    }
}
