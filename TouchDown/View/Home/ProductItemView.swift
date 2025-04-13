//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Aakash Gupta on 12/04/25.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZStack
            .background(
                Color(
                    red: product.red,
                    green: product.green,
                    blue: product.blue
                )
            )
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }//:VStack
    }
}

// MARK: - PREVIEW
#Preview {
    ProductItemView(
        product: products[0]
    ).previewLayout(.fixed(width: 200, height: 300))
        .padding()
        .background(colorBackground)
}
