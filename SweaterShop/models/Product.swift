//
//  Product.swift
//  SweaterShop
//
//  Created by Levi  on 23/03/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "sweater yellow", image: "sweater1", price: 54),
                   Product(name: "sweater blue", image: "sweater2", price: 89),
                   Product(name: "sweater green", image: "sweater3", price: 79),
                   Product(name: "sweater purple", image: "sweater4", price: 94),
                   Product(name: "sweater pink", image: "sweater5", price: 99),
                   Product(name: "sweater white", image: "sweater6", price: 65),
                   Product(name: "sweater marrom", image: "sweater7", price: 54),
                   Product(name: "sweater gray", image: "sweater8", price: 84)]
