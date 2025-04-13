//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Aakash Gupta on 12/04/25.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
