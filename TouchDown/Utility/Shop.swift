//
//  Shop.swift
//  TouchDown
//
//  Created by Aakash Gupta on 13/04/25.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}

