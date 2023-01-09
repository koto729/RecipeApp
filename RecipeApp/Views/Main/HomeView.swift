//
//  HomeView.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var api = API()
    var body: some View {
        NavigationView {
            List(api.title) { title in
                Text(song.name)
            }
        }
        .navigationViewStyle(.stack)
        .onAppear{
            api.getData()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
