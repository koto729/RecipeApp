//
//  Recipedetail.swift
//  RecipeApp
//
//  Created by KoWingTo on 12/1/2023.
//

import SwiftUI

struct Recipedetail: View {
    let contact: RecipeAPI
    var body: some View {
        Text(contact.title)
    }
}


