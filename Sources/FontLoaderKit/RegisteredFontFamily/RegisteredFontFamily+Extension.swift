//
//  RegisteredFontFamily+Extension.swift
//  VentuFonts
//
//  Created by Matheus Silveira Venturini on 02/07/25.
//

import Foundation
import CoreText

internal extension RegisteredFontFamily {
    
    func registeredFontFamilyName(named name: String) -> String {
        return CTFontCopyFamilyName(CTFont(name as CFString, size: 17)) as String
    }
    
    func registerFonts(bundle: Bundle) {
        guard let fontURLs = bundle.urls(forResourcesWithExtension: fontExtension.extensionSuffix, subdirectory: nil) else { fatalError() }
        fontRegistration(fontURLs: fontURLs)
    }
    
    func fontRegistration(fontURLs: [URL]) {
        CTFontManagerRegisterFontURLs(fontURLs as CFArray, .process, true) { errors, done in
            let errors = errors as! [CFError]
            guard errors.isEmpty else {
                preconditionFailure("Error on registering font: \(errors.map(\.localizedDescription))")
            }
            return true
        }
    }
}
