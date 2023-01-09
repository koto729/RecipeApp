//
//  API.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import Foundation

class API:ObservableObject{
    func getData(){

        let headers = [
            "X-RapidAPI-Key": "8c644aea87mshb99a670d9cec8abp1cc18fjsn0a0f818a41cd",
            "X-RapidAPI-Host": "recipe-by-api-ninjas.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://recipe-by-api-ninjas.p.rapidapi.com/v1/recipe?query=italian%20wedding%20soup")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
            }
        })

        dataTask.resume()
    }
}


