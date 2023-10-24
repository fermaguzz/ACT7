//
//  Product.swift
//  ACT7
//
//  Created by Fernanda M. Guzmán on 17/10/23.
//

import Foundation

class Product : Identifiable {
    var id = UUID()
    var image : String
    var name : String
    var price : String
    
    init(image : String, name : String, price : String) {
        self.image = image
        self.name = name
        self.price = price
    }
}
