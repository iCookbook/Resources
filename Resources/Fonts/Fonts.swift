//
//  Fonts.swift
//  Resources
//
//  Created by Егор Бадмаев on 06.11.2022.
//

import UIKit

/// The use of fonts in the application is centralized and described here.
///
/// We have serif font _"Ney York"_ and list of app's fonts.
///
/// - Note: It was described as `Сlass` in order to find its' bundle. Keyword `final` is for static dispatch => better perfomance.
public final class Fonts {
    
    // MARK: - Public Methods
    
    /// Registers appliation's custom fonts.
    public static func registerFonts() {
        registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Regular", fontExtension: "otf")
        registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Medium", fontExtension: "otf")
        registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Semibold", fontExtension: "otf")
        registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Bold", fontExtension: "otf")
    }
    
    // MARK: App's fonts
    
    public static func largeTitle() -> UIFont {
        newYork(ofSize: 36, weight: .bold)
    }
    
    public static func title() -> UIFont {
        newYork(ofSize: 24, weight: .bold)
    }
    
    public static func headline() -> UIFont {
        newYork(ofSize: 18, weight: .bold)
    }
    
    public static func body() -> UIFont {
        newYork(ofSize: 18, weight: .regular)
    }
    
    public static func systemBody() -> UIFont {
        .systemFont(ofSize: 18)
    }
    
    public static func medium() -> UIFont {
        newYork(ofSize: 18, weight: .medium)
    }
    
    public static func semibold() -> UIFont {
        newYork(ofSize: 18, weight: .semibold)
    }
    
    public static func smallBody() -> UIFont {
        newYork(ofSize: 16, weight: .regular)
    }
    
    public static func smallMedium() -> UIFont {
        newYork(ofSize: 16, weight: .medium)
    }
    
    public static func smallSemibold() -> UIFont {
        newYork(ofSize: 16, weight: .semibold)
    }
    
    public static func subtitle() -> UIFont {
        .systemFont(ofSize: 16, weight: .medium)
    }
    
    public static func buttonTitle() -> UIFont {
        .systemFont(ofSize: 16, weight: .semibold)
    }
    
    // MARK: - Private Methods
    
    /// Registers fonts for the resources bundle.
    ///
    /// - Parameters:
    ///   - bundle: bundle, where the font is.
    ///   - fontName: name of the font.
    ///   - fontExtension: file extension of the font.
    ///
    /// - Important: It is impossible to simply use fonts in CocoaPod. This code must be run (only once) for every font used in the project.
    private static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
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
    
    /// Provides custom font _New York_.
    ///
    /// - Parameters:
    ///   - ofSize: font size.
    ///   - weight: font weight.
    ///
    /// - Returns: `UIFont` instance with _New York Large_ typeface.
    ///
    /// - Note: It has fallbacks if there won't be a font provided by `CTFontManagerRegisterGraphicsFont` in `registerFont` method.
    private static func newYork(ofSize: CGFloat, weight: Fonts.Weight) -> UIFont {
        switch weight {
        case .regular:
            return UIFont(name: "NewYorkLarge-Regular", size: ofSize) ?? .systemFont(ofSize: ofSize)
        case .medium:
            return UIFont(name: "NewYorkLarge-Medium", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .medium)
        case .semibold:
            return UIFont(name: "NewYorkLarge-Semibold", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .semibold)
        case .bold:
            return UIFont(name: "NewYorkLarge-Bold", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .bold)
        }
    }
}

extension Fonts {
    enum Weight {
        case regular
        case medium
        case semibold
        case bold
    }
}
