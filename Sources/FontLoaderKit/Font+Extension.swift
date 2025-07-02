//
//  Font+Extension.swift
//  VentuFonts
//
//  Created by Matheus Silveira Venturini on 02/07/25.
//

import SwiftUI

internal extension Font.TextStyle {
    func getUIFontTextStyle() -> UIFont.TextStyle {
        switch self {
        case .largeTitle:
            UIFont.TextStyle.largeTitle
        case .title:
            UIFont.TextStyle.title1
        case .title2:
            UIFont.TextStyle.title2
        case .title3:
            UIFont.TextStyle.title3
        case .headline:
            UIFont.TextStyle.headline
        case .subheadline:
            UIFont.TextStyle.subheadline
        case .body:
            UIFont.TextStyle.body
        case .callout:
            UIFont.TextStyle.callout
        case .footnote:
            UIFont.TextStyle.footnote
        case .caption:
            UIFont.TextStyle.caption1
        case .caption2:
            UIFont.TextStyle.caption2
        @unknown default:
            UIFont.TextStyle.body
        }
    }
}
