//
//  ListModel.swift
//  MVVMArch
//
//  Created by satheesh kumar on 10/06/23.
//

import Foundation

struct Item: Identifiable, Codable{
    var id = UUID()
    var name : String
    var description : String
    
    static var exampleItem = Item(name: "xbox", description: "sample description")
    
    
}
