//
//  Colors.swift
//  Resources
//
//  Created by Егор Бадмаев on 27.10.2022.
//

import UIKit

/// To support dark theme, I've implemented a wrapper for all the colors. If the version of iOS allows us to use dark mode colors, it will use them.
public enum Colors {
    public static let systemBackground: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.systemBackground
        } else {
            return UIColor.white
        }
    }()
}
