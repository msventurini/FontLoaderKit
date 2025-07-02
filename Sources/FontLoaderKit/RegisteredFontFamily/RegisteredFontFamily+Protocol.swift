//
//  RegisteredFontFamily+Protocol.swift
//  VentuFonts
//
//  Created by Matheus Silveira Venturini on 02/07/25.
//

import Foundation

internal protocol RegisteredFontFamily {
    var familyName: String { get }
    var familyNameNSString: NSString { get }
    var familyNameCFString: CFString { get }
    var filesURLs: [URL] { get }
    var fontExtension: FontExtension { get }
    func registerFonts(bundle: Bundle)
    func registeredFontFamilyName(named name: String) -> String
}
