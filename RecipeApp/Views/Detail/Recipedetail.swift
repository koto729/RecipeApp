//
//  Recipedetail.swift
//  RecipeApp
//
//  Created by KoWingTo on 12/1/2023.
//

import SwiftUI

struct Recipedetail: View {
    @State private var isPressed = false
    @State private var counter = 0
    @Environment(\.managedObjectContext) private var viewContext
    
    let contact: RecipeAPI
    var body: some View {

        ScrollView{
            VStack(spacing: 30){
                Text(contact.title)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .opacity(isPressed ? 0.4 : 1.0)
                    .scaleEffect(isPressed ? 1.2 : 1.0)
                
                
                VStack(alignment: .leading, spacing: 20){
                    Text("Inredients")
                        .font(.headline)
                        .opacity(isPressed ? 0.4 : 1.0)
                        .scaleEffect(isPressed ? 1.2 : 1.0)
                    Text(contact.ingredients)
                        .opacity(isPressed ? 0.4 : 1.0)
                        .scaleEffect(isPressed ? 1.2 : 1.0)
                }
                
                VStack(alignment: .leading, spacing: 20){
                    Text("Direcions")
                        .opacity(isPressed ? 0.4 : 1.0)
                        .scaleEffect(isPressed ? 1.2 : 1.0)
                        .font(.headline)
                    
                    Text(contact.instructions)
                        .opacity(isPressed ? 0.4 : 1.0)
                        .scaleEffect(isPressed ? 1.2 : 1.0)
                }
                
                ZStack {
                    Capsule()
                        .fill(Color.blue)
                        .frame(width: 150, height: 50)

                    
                    Text("Like")
                        .foregroundColor(.white)
                        
                }
                .scaleEffect(isPressed ? 1.05 : 1.0)
                .opacity(isPressed ? 0.6 : 1.0)
                .onTapGesture {
                    let add = Myrecipe(context: viewContext)
                    add.title = contact.title
                    add.instructions = contact.instructions
                    add.ingredients = contact.ingredients
                    try! viewContext.save()
                }
                .pressEvents {
                    // On press
                    withAnimation(.easeInOut(duration: 0.1)) {
                        isPressed = true
                    }
                } onRelease: {
                    withAnimation {
                        isPressed = false
                    }
                }
            }
        }
            
        }
    
}


