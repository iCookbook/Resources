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
    
    public enum RecipeDetails {
        public static let titleDescription = "details title description".localized
        public static let titleIngredients = "details title ingredients".localized
        
        public static let recipeDescription1 = "details recipe description1".localized
        public static let recipeDescription2 = "details recipe description2".localized
        public static let recipeDescription3 = "details recipe description3".localized
        public static let recipeDescription4 = "details recipe description4".localized
        public static let recipeDescription5 = "details recipe description5".localized
    }
    
    public enum Search {
        public static let title = "search".localized
        public static let categories = "categories".localized
        public static let recommended = "recommended".localized
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
