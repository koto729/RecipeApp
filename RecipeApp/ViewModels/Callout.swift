//
//  Callout.swift
//  RecipeApp
//
//  Created by KoWingTo on 13/1/2023.
//

import SwiftUI

struct Callout: View {
    var annotation: AnnotationItem?
    var body: some View {
        HStack{
            Text(annotation!.title)
                .font(.callout)
        }
        .frame(width: 100, height: 36)
        .background(.white)
        .cornerRadius(4)
        .shadow(radius: 10)
        .offset(y: -40)
    }
}

