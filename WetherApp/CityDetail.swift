//
//  CityDetail.swift
//  WetherApp
//
//  Created by Kevin on 14/07/21.
//

import Foundation

class CityDetail:Decodable{
    var location: CityWeather
    var current: CurrentDetail
}

class CityWeather:Decodable{
    var name = ""
    var region = ""
    var country = ""
    var localtime = ""
}

class CurrentDetail:Decodable{
    var last_updated = ""
    var is_day:Int
    var temp_c:Float
    var temp_f :Float
    var condition: ConditionDetail
    var wind_mph:Float
    var cloud:Int
    var uv:Float
}
class ConditionDetail:Decodable{
    var text = ""
    var icon = ""
    var code:Int
}
