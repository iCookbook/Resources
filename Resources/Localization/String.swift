//
//  String.swift
//  Resources
//
//  Created by Егор Бадмаев on 27.10.2022.
//

import Foundation

extension String {
    /// Simplifies localizing texts.
    var localized: String {
        NSLocalizedString(self, bundle: Images.bundle, comment: "")
    }
}
