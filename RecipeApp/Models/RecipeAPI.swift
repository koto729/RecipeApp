//
//  RecipeAPI.swift
//  RecipeApp
//
//  Created by KoWingTo on 10/1/2023.
//

import Foundation

struct RecipeAPI: Codable, CustomStringConvertible{
    let id: UUID
    let title: String
    let ingredients: String
    let instructions: String
    var description: String{
        return "title: \(title)"
    }
    
    enum CodingKeys: String, CodingKey{
        case id
        case title
        case ingredients
        case instructions
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.ingredients = try container.decode(String.self, forKey: .ingredients)
        self.instructions = try container.decode(String.self, forKey: .instructions)
    }

}

