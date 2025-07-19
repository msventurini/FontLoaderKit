//
//  FontExtension.swift
//  VentuFonts
//
//  Created by Matheus Silveira Venturini on 02/07/25.
//

import Foundation

public enum FontExtension: Int, Sendable {
    
    case ttf = 0
    case otf
    
    public var extensionSuffix: String {
        switch self {
        case .ttf:
            return "ttf"
        case .otf:
            return "otf"
        }
    }
    
    public var dottetExtensionSuffix: String {
        return "." + extensionSuffix
    }
    
}

