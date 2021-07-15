//
//  ApiHandler.swift
//  WetherApp
//
//  Created by Kevin on 14/07/21.
//

import Foundation

class ApiHandler{
    
    static let shared = ApiHandler()

    func searchcity(with name:String) -> [CityDetail]{
        
        if let url = URL(string:
        "https://api.weatherapi.com/v1/current.json?key=3d17e8d0c22e4077ac2105216211407&q=\(name)")
        {
            
            if let data = try? Data(contentsOf: url)
            {
                
                let decoder = JSONDecoder()
                    
                if let JSONData = try? decoder.decode(CityDetail.self,from: data)
                {
                    print(JSONData.current.condition)
                    return [JSONData]
                }
            }
        }
        return [CityDetail]()
    }
}
