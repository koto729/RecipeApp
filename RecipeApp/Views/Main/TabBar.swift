//
//  TabBar.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct TabBar: View {
    @StateObject var recipeModel = RecipeModel()
    var body: some View {
        TabView{

            MyRecipeView()
                .tabItem{
                    Label("My Recipe", systemImage: "heart")
                }
            HomeView(contacts: recipeModel.contacts)
                .tabItem{
                    Label("Find", systemImage: "book")
                }
            NewRecipeView()
                .tabItem{
                    Label("Create recipe", systemImage: "plus")
                }
            MapView()
                .tabItem{
                    Label("Map", systemImage: "map")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
