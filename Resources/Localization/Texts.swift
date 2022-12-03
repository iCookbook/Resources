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
        
        public static let cookingTime = "cookingTime".localized
        public static let servingsCount = "servingsCount".localized
    }
    
    public enum RecipeDetails {
        public static let titleDescription = "details title description".localized
        public static let titleIngredients = "details title ingredients".localized
        
        public static func description(name: String, index: Int) -> String {
            /// We have only 6 descriptions, so we take the remainder of 6.
            String(format: "recipe description \(index % 6)".localized, name)
        }
        
        public static func calories(count: Int) -> String {
            String.localizedStringWithFormat("calories count".localized, count)
        }
        
        public static func servings(count: Int) -> String {
            String.localizedStringWithFormat("servings count".localized, count)
        }
        
        public static func minutes(count: Int) -> String {
            String.localizedStringWithFormat("minutes count".localized, count)
        }
        
        public static func protein(count: Int) -> String {
            String.localizedStringWithFormat("protein count".localized, count)
        }
        
        public static func fat(count: Int) -> String {
            String.localizedStringWithFormat("fat count".localized, count)
        }
        
        public static func carbs(count: Int) -> String {
            String.localizedStringWithFormat("carbs count".localized, count)
        }
    }
    
    public enum Search {
        public static let title = "search".localized
        public static let cuisines = "cuisines".localized
        public static let recommended = "recommended".localized
        public static let recent = "recent".localized
        public static let clear = "clear".localized
    }
    
    public enum Personal {
        public static let title = "personal".localized
    }
    
    public enum Errors {
        public static let error = "error".localized
        public static let oops = "error oops".localized
        public static let restartApp = "error restart app".localized
        public static let somethingWentWrong = "error something went wrong".localized
        public static let unexpectedError = "error unexpected error".localized
        public static let networkError = "error network error title".localized
        public static let networkErrorDescription = "error network error description".localized
        public static let serverError = "error server error title".localized
    }
}
