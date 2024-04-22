//
//  Products.swift
//  starbucks
//
//  Created by EDSON SANTOS on 19/04/2024.
//

import Foundation

enum Categories: String, CaseIterable {
    case all, coldCoffee, frapuccino, hotCoffee, iceLattes, fruitTea, espresso
}

enum productImage: String {
    case frapuccino = "Frapuccino"
    case iceLatte = "Ice Latte"
    case iceCoffee = "Ice Coffee"
    case fruitTea = "Fruit Tea"
}

struct Products: Identifiable {
    var id = UUID()
    var name: String
    var size: String
    var price: String
    var productImage: productImage
    
    var imageName: String {
        switch productImage {
        case .frapuccino:
            return "frapuccino"
        case .iceLatte:
            return "iceLatte"
        case .iceCoffee:
            return "iceCoffee"
        case .fruitTea:
            return "fruitTea"
        }
    }
}

extension Products {
    static let products: [Products] = [
        Products(name: "Frapucciono", size: "Small", price: "5.60", productImage: .frapuccino),
        
        Products(name: "Frapucciono", size: "Medium", price: "9.40", productImage: .frapuccino),
        
        Products(name: "Frapucciono", size: "Large", price: "10.99", productImage: .frapuccino),
        
        Products(name: "Ice Latte", size: "Small", price: "3.60", productImage: .iceLatte),
        
        Products(name: "Ice Latte", size: "Medium", price: "5.60", productImage: .iceLatte),
        
        Products(name: "Ice Latte", size: "Large", price: "9.60", productImage: .iceLatte),
        
        Products(name: "Ice Coffee", size: "Small", price: "3.60", productImage: .iceLatte),
        
        Products(name: "Ice Coffee", size: "Medium", price: "5.60", productImage: .iceLatte),
        
        Products(name: "Ice Coffee", size: "Large", price: "9.60", productImage: .iceLatte),
        
        Products(name: "Fruit Tea", size: "Small", price: "3.60", productImage: .fruitTea),
        
        Products(name: "Fruit Tea", size: "Medium", price: "5.60", productImage: .fruitTea),
        
        Products(name: "Fruit Tea", size: "Large", price: "9.60", productImage: .fruitTea),
    ]
}
