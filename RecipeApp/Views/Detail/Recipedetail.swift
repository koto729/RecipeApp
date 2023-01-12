//
//  Recipedetail.swift
//  RecipeApp
//
//  Created by KoWingTo on 12/1/2023.
//

import SwiftUI

struct Recipedetail: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    let contact: RecipeAPI
    var body: some View {
        ScrollView{
            VStack(spacing: 30){
                Text(contact.title)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                    
                    VStack(alignment: .leading, spacing: 20){
                        Text("Inredients")
                            .font(.headline)
                        Text(contact.ingredients)
                    }
                    
                    VStack(alignment: .leading, spacing: 20){
                        Text("Direcions")
                            .font(.headline)
                        
                        Text(contact.instructions)
                    }
                }
            Button("add to my recipe"){
                let add = Myrecipe(context: viewContext)
                add.title = contact.title
                add.instructions = contact.instructions
                add.ingredients = contact.ingredients
                try! viewContext.save()
            }
            }
        }
    
}


