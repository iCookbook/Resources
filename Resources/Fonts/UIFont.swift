//
//  UIFont.swift
//  Resources
//
//  Created by Егор Бадмаев on 06.11.2022.
//

import UIKit

extension UIFont {
    /// This method registers fonts for the pod.
    /// - Parameters:
    ///   - bundle: bundle, where fonts are.
    ///   - fontName: name of the font.
    ///   - fontExtension: file extension of the font.
    /// - Note: It is impossible to simply use fonts in CocoaPod. This code must be run for every font used in the project.
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
