//
//  ProductModel.swift
//  TouchDown
//
//  Created by Aakash Gupta on 12/04/25.
//

import Foundation

struct Product: Codable, Identifiable, Hashable {
    let id: Int
    let name: String
    let color: [Double]
    let image: String
    let price: Double
    let description: String
    
    var red: Double {
        return color[0]
    }
    
    var green: Double {
        return color[1]
    }
    
    var blue: Double {
        return color[2]
    }
    
    var formattedPrice: String {
        return "$\(String(format: "%.2f", price))"
    }
}
