//
//  String.swift
//  Resources
//
//  Created by Егор Бадмаев on 27.10.2022.
//

public extension String {
    /// Tries to localize string if it is a key.
    ///
    /// Simplifies localizing texts.
    var localized: String {
        NSLocalizedString(self, bundle: Images.bundle, comment: "")
    }
}
