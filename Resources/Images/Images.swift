//
//  Images.swift
//  Resources
//
//  Created by Егор Бадмаев on 27.10.2022.
//

import UIKit

public enum Images {
    static let frameworkBundle = Bundle(identifier: "com.egbad.Resources")
    
    public enum TabBarItems {
        public static let discover = UIImage(named: "doc.text.image", in: frameworkBundle, compatibleWith: nil)
        public static let search = UIImage(named: "magnifyingglass", in: frameworkBundle, compatibleWith: nil)
        public static let person = UIImage(named: "person.fill", in: frameworkBundle, compatibleWith: nil)
    }
    
    public static let sampleRecipeImage = UIImage(named: "SampleRecipeImage", in: frameworkBundle, compatibleWith: nil)
}
