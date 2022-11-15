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
/// It was described as Сlass in order to find its' bundle. Keyword `final` is for static dispatch => better perfomance.
public final class Fonts {
    
    // MARK: - Public Methods
    
    /// Before using fonts, we need to register them in `CTFontManagerRegisterGraphicsFont`.
    public static func registerFonts() {
        UIFont.registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Regular", fontExtension: "otf")
        UIFont.registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Medium", fontExtension: "otf")
        UIFont.registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Semibold", fontExtension: "otf")
        UIFont.registerFont(bundle: Bundle(for: Fonts.self), fontName: "NewYorkLarge-Bold", fontExtension: "otf")
    }
    
    // MARK: App's fonts
    
    public static func largeTitle() -> UIFont {
        newYorkBold(ofSize: 36)
    }
    
    public static func title() -> UIFont {
        newYorkBold(ofSize: 24)
    }
    
    public static func headline() -> UIFont {
        newYorkBold(ofSize: 18)
    }
    
    public static func navControllerTitle() -> UIFont {
        newYorkBold(ofSize: 18)
    }
    
    public static func body() -> UIFont {
        newYorkRegular(ofSize: 18)
    }
    
    public static func systemBody() -> UIFont {
        .systemFont(ofSize: 18)
    }
    
    public static func medium() -> UIFont {
        newYorkMedium(ofSize: 18)
    }
    
    public static func semibold() -> UIFont {
        newYorkSemibold(ofSize: 18)
    }
    
    public static func smallBody() -> UIFont {
        newYorkRegular(ofSize: 16)
    }
    
    public static func smallMedium() -> UIFont {
        newYorkMedium(ofSize: 16)
    }
    
    public static func smallSemibold() -> UIFont {
        newYorkSemibold(ofSize: 16)
    }
    
    public static func subtitle() -> UIFont {
        .systemFont(ofSize: 16, weight: .medium)
    }
    
    public static func buttonTitle() -> UIFont {
        .systemFont(ofSize: 16, weight: .semibold)
    }
    
    // MARK: New York
    
    private static func newYorkRegular(ofSize: CGFloat) -> UIFont {
        UIFont(name: "NewYorkLarge-Regular", size: ofSize) ?? .systemFont(ofSize: ofSize)
    }
    
    private static func newYorkMedium(ofSize: CGFloat) -> UIFont {
        UIFont(name: "NewYorkLarge-Medium", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .medium)
    }
    
    private static func newYorkSemibold(ofSize: CGFloat) -> UIFont {
        UIFont(name: "NewYorkLarge-Semibold", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .semibold)
    }
    
    private static func newYorkBold(ofSize: CGFloat) -> UIFont {
        UIFont(name: "NewYorkLarge-Bold", size: ofSize) ?? .systemFont(ofSize: ofSize, weight: .bold)
    }
}
