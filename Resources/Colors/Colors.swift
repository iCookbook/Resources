//
//  Colors.swift
//  Resources
//
//  Created by Егор Бадмаев on 27.10.2022.
//

import UIKit

/// Wrapper over the `UIColor` class.
///
/// This is necessary so that when a user has an iOS version higher than the 13th, he has support for a dark theme.
///
/// - Note: All colors are static constants cached in memory for better performance.
public enum Colors {
    /// Tint color of the application.
    public static let appColor: UIColor = UIColor(named: "AppColor", in: Images.bundle, compatibleWith: nil) ?? .blue
    
    /// The color for the main background of your interface.
    public static let systemBackground: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.systemBackground
        } else {
            return UIColor.white
        }
    }()
    
    /// Black color with opacity for dimmed background.
    public static let dimmedBackground = UIColor.black.withAlphaComponent(0.5)
    
    /// The color for content layered on top of the main background.
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
    
    /// The color for text labels.
    public static let label: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.label
        } else {
            return UIColor.black
        }
    }()
    
    /// The color for text labels that contain secondary content.
    public static let secondaryLabel: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.secondaryLabel
        } else {
            return UIColor(red: 146/255, green: 146/255, blue: 150/255, alpha: 0.85)
        }
    }()
    
    public static let lightSecondaryLabel = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 0.9)
    
    /// The color for text labels that contain tertiary content.
    public static let tertiaryLabel: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.tertiaryLabel
        } else {
            return UIColor(red: 208/255, green: 208/255, blue: 210/255, alpha: 0.8)
        }
    }()
}
