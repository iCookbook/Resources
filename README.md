# Resources

Resources layer of the application

## Summary

### [Colors](Resources/Colors/Colors.swift)

Wrapper over the `UIColor` class.

It has fallbacks for lower versions of iOS for supporting dark theme in iOS 13.0 and above. For example:

```swift
/// The color for the main background of your interface.
public static let systemBackground: UIColor = {
    if #available(iOS 13.0, *) {
        return UIColor.systemBackground
    } else {
        return UIColor.white
    }
}()
```

### [Fonts](Resources/Fonts/Fonts.swift)

Font manager that simplifies fonts' usage

### [Images](Resources/Images/Images.swift)

Class-wrapper for all the images in the application

### [Texts](Resources/Localization/Texts.swift)

Wrapper for all the strings in the application

## Dependencies

- [Logger](https://github.com/iCookbook/Logger) to log data in debug mode

---

For more details, read [GitHub Wiki](https://github.com/iCookbook/Resources/wiki) documentation
