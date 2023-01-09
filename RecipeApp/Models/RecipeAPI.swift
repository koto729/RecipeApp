//
//  RecipeAPI.swift
//  RecipeApp
//
//  Created by KoWingTo on 10/1/2023.
//

import Foundation

struct RecipeAPI : Codable, Identifiable{
    var id:String{
        self.title
    }
    var title : String
}
