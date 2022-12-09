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
    
    public static let sampleRecipeImage = UIImage(name: "RecipeMockup")
    
    public enum TabBarItems {
        public static let discover = UIImage(name: "doc.text.image")
        public static let search = UIImage(name: "magnifyingglass")
        public static let person = UIImage(name: "person.fill")
    }
    
    public enum Discover {
        public static let bookFilled = UIImage(name: "book.closed.fill")
    }
    
    public enum RecipeDetails {
        public static let heart = UIImage(name: "heart")
        public static let filledHeart = UIImage(name: "filledHeart")
        
        public static let chevronForward = UIImage(name: "chevron.right")
        public static let chevronBackward = UIImage(name: "chevron.left")
        public static let share = UIImage(name: "square.and.arrow.up")
        public static let reload = UIImage(name: "arrow.clockwise")
        public static let safari = UIImage(name: "safari")
    }
    
    public enum Search {
        public static let searchArrow = UIImage(name: "arrow.up.left")
        public static let filter = UIImage(name: "line.3.horizontal.decrease.circle")
        public static let filterFill = UIImage(name: "line.3.horizontal.decrease.circle.fill")
        public static let close = UIImage(name: "xmark.circle.fill")
    }
    
    public enum Errors {
        public static let network = UIImage(name: "network")
        public static let info = UIImage(name: "info.circle")
        public static let persistence = UIImage(name: "externaldrive.badge.exclamationmark")
        public static let hammer = UIImage(name: "hammer.fill")
    }
}

extension Images {
    static var bundle: Bundle {
        let path = Bundle(for: Images.self).path(forResource: "Resources", ofType: "bundle") ?? ""
        let bundle = Bundle(path: path) ?? Bundle.main
        return bundle
    }
}

fileprivate extension UIImage {
    convenience init?(name: String) {
        self.init(named: name, in: Images.bundle, compatibleWith: nil)
    }
}
