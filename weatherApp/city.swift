//
//  city.swift
//  weatherApp
//
//  Created by 정현화 on 2022/10/11.
//

import Foundation

struct City {
    var city: String
    
    static func GetAllCitys() -> [City] {
        return [
            City(city: "서울"),
            City(city: "도쿄"),
            City(city: "뉴욕"),
            City(city: "런던"),
            City(city: "시드니")
        ]
    }
}
