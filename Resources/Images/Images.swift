//
//  Images.swift
//  Resources
//
//  Created by Егор Бадмаев on 27.10.2022.
//

import UIKit

/// Class-wrapper for all the images in the application.
///
/// Defined as `class` in order to use it find its' `bundle`. `final` is being used for static dispatch => better perfomance.
public final class Images {
    public enum TabBarItems {
        public static let discover = UIImage(named: "doc.text.image", in: Images.bundle, compatibleWith: nil)
        public static let search = UIImage(named: "magnifyingglass", in: Images.bundle, compatibleWith: nil)
        public static let person = UIImage(named: "person.fill", in: Images.bundle, compatibleWith: nil)
    }
    
    public enum Discover {
        public static let network = UIImage(named: "network", in: Images.bundle, compatibleWith: nil)
        public static let bookFilled = UIImage(named: "book.closed.fill", in: Images.bundle, compatibleWith: nil)
    }
    
    public static let sampleRecipeImage: UIImage = UIImage(named: "RecipeMockup", in: Images.bundle, compatibleWith: nil) ?? UIImage()
}

extension Images {
    static var bundle: Bundle {
        let path = Bundle(for: Images.self).path(forResource: "Resources", ofType: "bundle") ?? ""
        let bundle = Bundle(path: path) ?? Bundle.main
        return bundle
    }
}
