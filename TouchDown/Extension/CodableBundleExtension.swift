//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by Aakash Gupta on 11/04/25.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the JSON file
        guard let url = self.url(
            forResource: file,
            withExtension: nil
        ) else {
            fatalError("Failed to locatee \(file) in bundle.")
        }
        
        // 2. Create a property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to data from \(file).")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the deocoded data
        guard let decodedData = try? decoder.decode(
            T.self, from: data
        ) else {
            fatalError("Failed to decode data from \(file).")
        }
        
        // 5. Return the ready to use data
        return decodedData
    }
}
