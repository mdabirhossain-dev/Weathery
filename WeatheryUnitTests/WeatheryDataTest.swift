//
//  WeatheryDataTests.swift
//  WeatheryUnitTests
//
//  Created by Md Abir Hossain on 29/11/23.
//

import XCTest
import Weathery


struct WeatherData: Codable {
    var name: String
    var main: Main
    var weather: [Weather]
}

struct Main: Codable {
    var temp: Double
}

struct Weather: Codable {
    var id: Int
    var description: String
}


final class WeatheryDataTest: XCTestCase {
    
    func testExample() throws {
        
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
        
        XCTAssertEqual(10.55, weatherData.main.temp)
        XCTAssertEqual("Category", weatherData.name)
        
    }

    
    func testWeatherJSONExample() throws {
        
        guard let pathString = Bundle(for: type(of: self)).path(forResource: "WeatherJSON", ofType: "json") else {
            fatalError("json not found")
        }
        
        print("\n\n\(pathString)\n\n")
        
        guard let json = try? String(contentsOfFile: pathString, encoding: .utf8) else {
            fatalError("Unable to convert JSON to string")
        }
        
        let jsonData = json.data(using: .utf8)!
        let weatherData = try! JSONDecoder().decode(WeatherData.self, from: jsonData)
        
        XCTAssertEqual(10.55, weatherData.main.temp)
        XCTAssertEqual("Category", weatherData.name)
        
    }
    
}
