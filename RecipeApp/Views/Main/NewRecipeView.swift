//
//  NewRecipeView.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("Create")
                .navigationTitle("Create New Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
