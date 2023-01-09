//
//  HomeView.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var model = RecipeModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(model.contacts){
                    contact in
                    HStack{
                        Text(contact.title)        .navigationTitle("My Recipe")
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
        .onAppear{
            model.fetch()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
