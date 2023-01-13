//
//  HomeView.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct HomeView: View {

    let contacts: [RecipeAPI]
    let chickens: [RecipeAPI]
    
    var body: some View {
        
        NavigationView {
            VStack{
                List{
                    ForEach(contacts){ contact in
                        NavigationLink{
                            Recipedetail(food: contact)
                        } label: {
                            Text(contact.title)
                        }
                    }
                    ForEach(chickens) { chicken in
                        NavigationLink{
                            Recipedetail(food: chicken)
                        } label: {
                            Text(chicken.title)
                        }
                    }
                }
            }
            .navigationTitle("Find")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(contacts: [RecipeAPI](),chickens: [RecipeAPI]())
    }
}
