//
//  MyRecipeView.swift
//  RecipeApp
//
//  Created by KoWingTo on 13/1/2023.
//

import SwiftUI

struct MyRecipeView: View {
    @Environment(\.managedObjectContext) private var viewContext
    /*let myrecipe = try! viewContext.fetch(Myrecipe.fetchRequest())*/
    @FetchRequest(
        sortDescriptors: [SortDescriptor(\.title)],
        animation: .default
    ) private var mydata: FetchedResults<Myrecipe>
    var body: some View {
    
        
        NavigationView {
            List{
                ForEach(mydata){mydata in
                    Text(mydata.title ?? "no")
                    
                }
            }
                .navigationTitle("My Recipe")
        }
    }
}

struct MyRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        MyRecipeView()
    }
}
