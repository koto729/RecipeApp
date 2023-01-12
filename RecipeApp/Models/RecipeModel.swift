//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by KoWingTo on 10/1/2023.
//

import Foundation

//@MainActor
class RecipeModel : ObservableObject{
    @Published var contacts = [RecipeAPI]()
    
    init(){
        fetch()
    }
    func fetch(){
        let headers = [
            "X-RapidAPI-Key": "8c644aea87mshb99a670d9cec8abp1cc18fjsn0a0f818a41cd",
            "X-RapidAPI-Host": "recipe-by-api-ninjas.p.rapidapi.com"
        ]
 
        let request = NSMutableURLRequest(url: NSURL(string: "https://recipe-by-api-ninjas.p.rapidapi.com/v1/recipe?query=soup")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers



        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) { data, response, error in
            if let data = data{
                let decoder = JSONDecoder()
                do{
                    let contacts = try decoder.decode([RecipeAPI].self, from: data)
                    DispatchQueue.main.async {
                        self.contacts = contacts
                    }                    
                }catch{
                    print(error)
                }
                
            }
        }
        dataTask.resume()
    }
}

