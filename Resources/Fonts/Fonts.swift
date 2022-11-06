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
/// It was described as `final class` in order to find its' bundle.
public final class Fonts {
    
    // MARK: - Public Methods
    
    public static func registerFonts() {
        UIFont.registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Regular", fontExtension: "otf")
        UIFont.registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Medium", fontExtension: "otf")
        UIFont.registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Semibold", fontExtension: "otf")
        UIFont.registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Bold", fontExtension: "otf")
    }
    
    // MARK: New York
    
    public static func newYorkRegular(ofSize: CGFloat) -> UIFont {
        UIFont(name: "NewYorkLarge-Regular", size: ofSize) ?? .systemFont(ofSize: ofSize)
    }
    
    public static func newYorkMedium(ofSize: CGFloat) -> UIFont {
        UIFont(name: "NewYorkLarge-Medium", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .medium)
    }
    
    public static func newYorkSemibold(ofSize: CGFloat) -> UIFont {
        UIFont(name: "NewYorkLarge-Semibold", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .semibold)
    }
    
    public static func newYorkBold(ofSize: CGFloat) -> UIFont {
        UIFont(name: "NewYorkLarge-Bold", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .bold)
    }
    
    // MARK: App's fonts
    
    public static func title() -> UIFont {
        newYorkBold(ofSize: 36)
    }
    
    public static func headline() -> UIFont {
        newYorkBold(ofSize: 24)
    }
}
