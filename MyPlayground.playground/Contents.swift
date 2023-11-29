import UIKit

var greeting = "Hello, playground"


let json = """
{
"weather": [
    {
        "id": 804,
        "description": "overcast cloud",
  }
],
"main": {
    "temp": 10.55,
},
"name": "Category"
}
"""

let jsonData = json.data(using: .utf8)!
let weatherData = try! JSONDecoder().decode(WeatherData.self, from: jsonData)


struct WeatherData: Codable {
    var name: String
    var main: Main
    var weather: [Weather]
    
//case CodingKeys: String, CodingKey {
//    
//}
}

struct Main: Codable {
    var temp: Double
}

struct Weather: Codable {
    var id: Int
    var description: String
}
