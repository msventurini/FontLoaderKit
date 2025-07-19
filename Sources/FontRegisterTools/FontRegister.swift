//
//  FontRegister.swift
//  VentuFonts
//
//  Created by Matheus Silveira Venturini on 02/07/25.
//

import Foundation

public struct FontRegister: RegisteredFontFamily {
    
    package let filesURLs: [URL]
    
    package let fontExtension: FontExtension
    
    public init(at bundle: Bundle, with fontExtension: FontExtension) {
        
        self.fontExtension = fontExtension
        
        guard let filesURLs = bundle.urls(forResourcesWithExtension: fontExtension.extensionSuffix, subdirectory: nil) else {
            fatalError("no font file url")
        }
        self.filesURLs = filesURLs
        registerFonts(bundle: bundle)
        
    }
}

