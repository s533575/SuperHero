//
//  Laureates.swift
//  SuperHeros_Laureates
//
//  Created by Student on 4/10/19.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation

struct Laureates : Codable{
    var id:String
    var firstname:String
    var surname:String
    var born:String
    var died:String
    var bornCountry:String
    var bornCountryCode:String
    var bornCity:String
    var diedCountry:String
    var diedCountryCode:String
    var diedCity:String
    var gender:String
    var prizes:[Prizes]
}
struct Prizes:Codable{
    var year:String
    var category:String
    var share:String
    var motivation:String
    var affiliations:[Affiliation]
}

struct Affiliation:Codable{
    var name:String
    var city:String
    var Country:String
}
