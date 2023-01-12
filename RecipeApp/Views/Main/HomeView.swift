//
//  HomeView.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct HomeView: View {

    let contacts: [RecipeAPI]
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List{
                ForEach(contacts){ contact in
                    NavigationLink{
                        Recipedetail(contact: contact)
                    } label: {
                        Text(contact.title)
                    }
                    //Text(contact.title)
                    
                }
            }
            .navigationTitle("My Recipe")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(contacts: [RecipeAPI]())
    }
}
