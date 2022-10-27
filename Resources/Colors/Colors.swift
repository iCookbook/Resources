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
}
