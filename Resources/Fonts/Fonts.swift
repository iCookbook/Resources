//
//  Fonts.swift
//  Resources
//
//  Created by Егор Бадмаев on 06.11.2022.
//

import UIKit
import Logger

/// The use of fonts in the application is centralized and described here.
///
/// We have serif font _"Ney York"_ and list of app's fonts.
///
/// - Note: It was described as `Сlass` in order to find its' bundle. Keyword `final` is for static dispatch => better perfomance.
public final class Fonts {
    
    // MARK: - Private Properties
    
    /// Bundle of this class.
    private static let bundle = Bundle(for: Fonts.self)
    
    // MARK: - Public Methods
    
    /// Registers appliation's custom fonts.
    public static func registerFonts() {
        registerFont(fontName: "NewYorkLarge-Regular", fontExtension: "otf")
        registerFont(fontName: "NewYorkLarge-Medium", fontExtension: "otf")
        registerFont(fontName: "NewYorkLarge-Semibold", fontExtension: "otf")
        registerFont(fontName: "NewYorkLarge-Bold", fontExtension: "otf")
    }
    
    // MARK: App's fonts
    
    public static func largeTitle() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .largeTitle)
        return fontMetrics.scaledFont(for: newYork(ofSize: 36, weight: .bold))
    }
    
    public static func title() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .title1)
        return fontMetrics.scaledFont(for: newYork(ofSize: 24, weight: .bold))
    }
    
    public static func headline() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .title2)
        return fontMetrics.scaledFont(for: newYork(ofSize: 18, weight: .bold))
    }
    
    public static func errorTitle() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .title3)
        return fontMetrics.scaledFont(for: .systemFont(ofSize: 18, weight: .bold))
    }
    
    public static func body() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .body)
        return fontMetrics.scaledFont(for: newYork(ofSize: 18, weight: .regular))
    }
    
    public static func systemBody() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .body)
        return fontMetrics.scaledFont(for: .systemFont(ofSize: 18))
    }
    
    public static func medium() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .body)
        return fontMetrics.scaledFont(for: newYork(ofSize: 18, weight: .medium))
    }
    
    public static func semibold() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .body)
        return fontMetrics.scaledFont(for: newYork(ofSize: 18, weight: .semibold))
    }
    
    public static func smallBody() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .callout)
        return fontMetrics.scaledFont(for: newYork(ofSize: 16, weight: .regular))
    }
    
    public static func smallMedium() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .caption1)
        return fontMetrics.scaledFont(for: newYork(ofSize: 16, weight: .medium))
    }
    
    public static func smallSemibold() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .caption2)
        return fontMetrics.scaledFont(for: newYork(ofSize: 16, weight: .semibold))
    }
    
    public static func subtitle() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .subheadline)
        return fontMetrics.scaledFont(for: .systemFont(ofSize: 16, weight: .medium))
    }
    
    public static func buttonTitle() -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: .title3)
        return fontMetrics.scaledFont(for: .systemFont(ofSize: 16, weight: .semibold))
    }
    
    // MARK: - Private Methods
    
    /// Registers fonts for the resources bundle.
    ///
    /// - Parameters:
    ///   - fontName: name of the font.
    ///   - fontExtension: file extension of the font.
    ///
    /// - Important: It is impossible to simply use fonts in CocoaPod. This code must be run (only once) for every font used in the project.
    private static func registerFont(fontName: String, fontExtension: String) {
        guard let path = bundle.path(forResource: "Resources", ofType: "bundle"),
              let bundle = Bundle(path: path),
              let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension)
        else {
            Logger.log("Couldn't find font \(fontName)", logType: .error)
            return
        }
        
        guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
            Logger.log("Couldn't load data from the font \(fontName)", logType: .error)
            return
        }
        
        guard let font = CGFont(fontDataProvider) else {
            Logger.log("Couldn't create font from data", logType: .error)
            return
        }
        
        /// Variable to store optional core foundation error.
        var error: Unmanaged<CFError>?
        /// Defines the result of registering font. If the value is `true`, it means everything is ok, otherwise - there will be some error occured.
        let success = CTFontManagerRegisterGraphicsFont(font, &error)
        
        if let error = error {
            Logger.log("\(error)", logType: .error)
            return
        }
        
        guard success else {
            Logger.log("Error registering font: maybe it was already registered.", logType: .warning)
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
    private static func newYork(ofSize: CGFloat, weight: UIFont.Weight) -> UIFont {
        switch weight {
        case .regular:
            return UIFont(name: "NewYorkLarge-Regular", size: ofSize) ?? .systemFont(ofSize: ofSize)
        case .medium:
            return UIFont(name: "NewYorkLarge-Medium", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .medium)
        case .semibold:
            return UIFont(name: "NewYorkLarge-Semibold", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .semibold)
        case .bold:
            return UIFont(name: "NewYorkLarge-Bold", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .bold)
        default:
            Logger.log("You're trying to use unexpected weight for the font.", logType: .warning)
            return UIFont(name: "NewYorkLarge-Regular", size: ofSize) ?? .systemFont(ofSize: ofSize)
        }
    }
}
