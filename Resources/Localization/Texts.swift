//
//  Texts.swift
//  Resources
//
//  Created by Егор Бадмаев on 27.10.2022.
//

/// Wrapper for all the strings in the application.
public enum Texts {
    public enum Discover {
        public static let title = "discover".localized
        public static let dishOfTheDay = "dishOfTheDay".localized
        public static let mockRecipeTitle = "mockRecipeTitle".localized
        public static let emptyCollectionViewText = "discover empty collection view text".localized
    }
    
    public enum Search {
        public static let title = "search".localized
    }
    
    public enum Personal {
        public static let title = "personal".localized
    }
    
    public enum Errors {
        public static let oops = "oops".localized
        public static let restartApp = "error restart app".localized
        public static let somethingWentWrong = "error something went wrong".localized
        public static let unexpectedError = "error unexpected error".localized
        public static let internetError = "error internet error".localized
    }
}
