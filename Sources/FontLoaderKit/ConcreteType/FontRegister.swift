//
//  FontRegister.swift
//  VentuFonts
//
//  Created by Matheus Silveira Venturini on 02/07/25.
//

import Foundation

internal struct FontRegister: RegisteredFontFamily, Sendable {
    
    internal var familyNameCFString: CFString {
        return self.familyName as CFString
    }
    
    internal var familyNameNSString: NSString {
        return self.familyName as NSString
    }
    
    internal var familyName: String {
        guard let filename = filesURLs.first else {
            fatalError("no font family")
        }
        return registeredFontFamilyName(named: filename.lastPathComponent.replacingOccurrences(of: fontExtension.dottetExtensionSuffix, with: ""))
    }
    
    internal let filesURLs: [URL]
    
    internal let fontExtension: FontExtension
    
    internal init(at bundle: Bundle, with fontExtension: FontExtension) {
        
        self.fontExtension = fontExtension
        
        guard let filesURLs = bundle.urls(forResourcesWithExtension: fontExtension.extensionSuffix, subdirectory: nil) else {
            fatalError("no font file url")
        }
        self.filesURLs = filesURLs
        registerFonts(bundle: bundle)
        
    }
}

