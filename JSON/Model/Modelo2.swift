//
//  Modelo2.swift
//  JSON
//
//  Created by Reales Rectoro Myles Clarence on 15/04/24.
//

import Foundation

struct Modelo2 : Decodable {
    var data : [UserList]
}

struct UserList : Decodable {
    var id : Int
    var first_name : String
    var email : String
    var avatar : String
}
