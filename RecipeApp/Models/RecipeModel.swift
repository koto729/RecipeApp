//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by KoWingTo on 10/1/2023.
//

import Foundation
class RecipeModel : ObservableObject{
    @Published var contacts: [RecipeAPI] = []
    
    func fetch(){
        let url = URL(string: "https://api.spoonacular.com/recipes/random?number=2&apiKey=ddf87b6e52fc45ca83af7599f55e6e08")!
        let request = URLRequest(url: url)

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) {(data, response, error) in
            if let data = data{
                self.contacts.removeAll()
                let decoder = JSONDecoder()
                if let results = try? decoder.decode([RecipeAPI].self, from: data){
                    self.contacts = results
                }
            }
        }
        dataTask.resume()
    }
}

