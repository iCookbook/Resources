//
//  UIFont.swift
//  Resources
//
//  Created by Егор Бадмаев on 06.11.2022.
//

import UIKit

/// This code registers fonts for the project.
extension UIFont {
    public static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        guard let path = bundle.path(forResource: "Resources", ofType: "bundle"),
              let bundle = Bundle(path: path),
              let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension)
        else {
            fatalError("Couldn't find font \(fontName)")
        }
        
        guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
            fatalError("Couldn't load data from the font \(fontName)")
        }
        
        guard let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }
        
        var error: Unmanaged<CFError>?
        let success = CTFontManagerRegisterGraphicsFont(font, &error)
        
        guard error == nil else {
            fatalError("Some error occurred: \(String(describing: error))")
        }
        
        guard success else {
            print("Error registering font: maybe it was already registered.")
            return
        }
    }
}
