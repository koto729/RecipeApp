//
//  TabBar.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
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
