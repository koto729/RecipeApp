//
//  MapView.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        NavigationView {
            Text("Create")
                .navigationTitle("Map")
        }
        .navigationViewStyle(.stack)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
