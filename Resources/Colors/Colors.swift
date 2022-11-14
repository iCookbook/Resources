//
//  Colors.swift
//  Resources
//
//  Created by Егор Бадмаев on 27.10.2022.
//

import UIKit

/// Обёртка над классом `UIColor`. Это необходимо для того, чтобы когда пользователь имел версию iOS выше 13-й, у него была поддержка тёмной темы.
///
/// Все цвета - статические константы, кэшированные в памяти для лучшей производительности.
public enum Colors {
    /// Tint color of the application.
    public static let appColor: UIColor = UIColor(named: "AppColor", in: Images.bundle, compatibleWith: nil) ?? .blue
    
    public static let systemBackground: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.systemBackground
        } else {
            return UIColor.white
        }
    }()
    
    public static let systemGroupedBackground: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.secondarySystemBackground
        } else {
            return UIColor(red: 242/255, green: 242/255, blue: 247/255, alpha: 1.0)
        }
    }()
    
    public static let transparentTitleLabel: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.label.withAlphaComponent(0.9)
        } else {
            return UIColor.black.withAlphaComponent(0.9)
        }
    }()
    
    public static let secondaryLabel: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.secondaryLabel
        } else {
            return UIColor(red: 146/255, green: 146/255, blue: 150/255, alpha: 0.85)
        }
    }()
    
    public static let lightSecondaryLabel = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 0.9)
    
    public static let tertiaryLabel: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.tertiaryLabel
        } else {
            return UIColor(red: 208/255, green: 208/255, blue: 210/255, alpha: 0.8)
        }
    }()
}
