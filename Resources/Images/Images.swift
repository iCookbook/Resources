//
//  Images.swift
//  Resources
//
//  Created by Егор Бадмаев on 27.10.2022.
//

import UIKit

/// Class-wrapper for all the images in the application.
///
/// - Note: Defined as `class` in order to use it find its' `bundle`. `final` is being used for static dispatch => better perfomance.
public final class Images {
    
    public static let sampleRecipeImage = UIImage("RecipeMockup")
    
    public enum TabBarItems {
        public static let discover = UIImage("doc.text.image")
        public static let search = UIImage("magnifyingglass")
        public static let person = UIImage("person.fill")
    }
    
    public enum Discover {
        public static let bookFilled = UIImage("book.closed.fill")
    }
    
    public enum RecipeDetails {
        public static let heart = UIImage("heart")
        public static let filledHeart = UIImage("filledHeart")
        
        public static let chevronForward = UIImage("chevron.right")
        public static let chevronBackward = UIImage("chevron.left")
        public static let share = UIImage("square.and.arrow.up")
        public static let reload = UIImage("arrow.clockwise")
        public static let safari = UIImage("safari")
    }
    
    public enum Search {
        public static let searchArrow = UIImage("arrow.up.left")
        public static let filter = UIImage("line.3.horizontal.decrease.circle")
        public static let filterFill = UIImage("line.3.horizontal.decrease.circle.fill")
        public static let close = UIImage("xmark.circle.fill")
    }
    
    public enum Errors {
        public static let network = UIImage("network")
        public static let info = UIImage("info.circle")
        public static let persistence = UIImage("externaldrive.badge.exclamationmark")
        public static let hammer = UIImage("hammer.fill")
    }
}

extension Images {
    /// Resources bundle of the application where all images are contained.
    ///
    /// It is `static` in order to give `String` extension access to itself.
    static var bundle: Bundle {
        let path = Bundle(for: Images.self).path(forResource: "Resources", ofType: "bundle") ?? ""
        let bundle = Bundle(path: path) ?? Bundle.main
        return bundle
    }
}

fileprivate extension UIImage {
    convenience init?(_ name: String) {
        self.init(named: name, in: Images.bundle, compatibleWith: nil)
    }
}
