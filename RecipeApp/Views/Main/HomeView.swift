//
//  HomeView.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct HomeView: View {
    //@StateObject var RecipeModel = RecipeModel()
    let contacts: [RecipeAPI]
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            Text("a")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(contacts: [RecipeAPI]())
    }
}
