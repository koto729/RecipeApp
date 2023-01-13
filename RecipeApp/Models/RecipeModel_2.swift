//
//  RecipeModel_2.swift
//  RecipeApp
//
//  Created by KoWingTo on 13/1/2023.
//

import Foundation

//@MainActor
class RecipeModel_2 : ObservableObject{
    @Published var chickens = [RecipeAPI]()
    
    init(){
        fetch2()
    }
    func fetch2(){
        let headers = [
            "X-RapidAPI-Key": "8c644aea87mshb99a670d9cec8abp1cc18fjsn0a0f818a41cd",
            "X-RapidAPI-Host": "recipe-by-api-ninjas.p.rapidapi.com"
        ]
 
        let request = NSMutableURLRequest(url: NSURL(string: "https://recipe-by-api-ninjas.p.rapidapi.com/v1/recipe?query=chicken")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers



        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) { data, response, error in
            if let data = data{
                let decoder = JSONDecoder()
                do{
                    let chickens = try decoder.decode([RecipeAPI].self, from: data)
                    DispatchQueue.main.async {
                        self.chickens = chickens
                    }
                }catch{
                    print(error)
                }
                
            }
        }
        dataTask.resume()
    }
}
