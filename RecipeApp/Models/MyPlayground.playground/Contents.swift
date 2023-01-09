import UIKit

var greeting = "Hello, playground"
print(greeting)


func fetch(){

    let headers = [
        "X-RapidAPI-Key": "8c644aea87mshb99a670d9cec8abp1cc18fjsn0a0f818a41cd",
        "X-RapidAPI-Host": "edamam-food-and-grocery-database.p.rapidapi.com"
    ]

    let request = NSMutableURLRequest(url: NSURL(string: "https://edamam-food-and-grocery-database.p.rapidapi.com/parser?ingr=apple")! as URL,
                                            cachePolicy: .useProtocolCachePolicy,
                                        timeoutInterval: 10.0)
    request.httpMethod = "GET"
    request.allHTTPHeaderFields = headers

    let session = URLSession.shared
    let dataTask = session.dataTask(with: request as URLRequest){ (data, response, error) in
        guard let data = data else { return }
        print(String(data: data, encoding: .utf8)!)
    
    }
                                    

    dataTask.resume()
}




fetch()
