//
//  String.swift
//  Resources
//
//  Created by Егор Бадмаев on 27.10.2022.
//

import Foundation

extension String {
    /// For simplify localizing texts in the whole application
    var localized: String {
        NSLocalizedString(self, bundle: Images.frameworkBundle ?? .main, comment: "")
    }
}
