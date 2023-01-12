import UIKit

var greeting = "Hello, playground"
print(greeting)


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
    let task = URLSession.shared.dataTask(with: request as URLRequest) {(data, response, error) in
        guard let data = data else { return }
        print(String(data: data, encoding: .utf8)!)
    }
    task.resume()
}




fetch()
