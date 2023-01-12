//
//  Myrecipedetail.swift
//  RecipeApp
//
//  Created by KoWingTo on 13/1/2023.
//

import SwiftUI

struct Myrecipedetail: View {
    @State private var isPressed = false
    @State private var counter = 0
    @Environment(\.managedObjectContext) private var viewContext
    
    let mydata: Myrecipe
    var body: some View {
        
        ScrollView{
            VStack(spacing: 30){
                Text(mydata.title ?? "error")
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
                    Text(mydata.ingredients ?? "error")
                        .opacity(isPressed ? 0.4 : 1.0)
                        .scaleEffect(isPressed ? 1.2 : 1.0)
                }
                
                VStack(alignment: .leading, spacing: 20){
                    Text("Direcions")
                        .opacity(isPressed ? 0.4 : 1.0)
                        .scaleEffect(isPressed ? 1.2 : 1.0)
                        .font(.headline)
                    
                    Text(mydata.instructions ?? "error")
                        .opacity(isPressed ? 0.4 : 1.0)
                        .scaleEffect(isPressed ? 1.2 : 1.0)
                }
            }
            ZStack {
                Capsule()
                    .fill(Color.blue)
                    .frame(width: 150, height: 50)
                
                Text("Delete")
                    .foregroundColor(.white)
                    
            }
            .scaleEffect(isPressed ? 1.05 : 1.0)
            .opacity(isPressed ? 0.6 : 1.0)
            .onTapGesture {
                let del = try! viewContext.fetch(Myrecipe.fetchRequest())
                del.filter{ del in
                    del.title == mydata.title
                }.forEach(viewContext.delete)
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
    


