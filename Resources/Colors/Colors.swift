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
    public static let systemBackground: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.systemBackground
        } else {
            return UIColor.white
        }
    }()
    
    public static let secondaryLabel: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.secondaryLabel
        } else {
            return UIColor(red: 138/255, green: 138/255, blue: 142/255, alpha: 1.0)
        }
    }()
    
    public static let tertiaryLabel: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.secondaryLabel
        } else {
            return UIColor(red: 196/255, green: 196/255, blue: 198/255, alpha: 1.0)
        }
    }()
}
