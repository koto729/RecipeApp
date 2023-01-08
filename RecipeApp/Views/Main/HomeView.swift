//
//  HomeView.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("Recipe")
                .navigationTitle("Recipe APP")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}