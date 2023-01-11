//
//  HomeView.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var model = RecipeModel()
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List{
                    ForEach(model.contacts){
                        contact in
                        HStack{
                        Text(contact.title)
                    }
                }
            }
            .searchable(text: $searchText)
            
            .onAppear{
                model.fetch()
            }
            .navigationTitle("My Recipe")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
