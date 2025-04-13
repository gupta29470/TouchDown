//
//  PriceImageDetailView.swift
//  TouchDown
//
//  Created by Aakash Gupta on 12/04/25.
//

import SwiftUI

struct PriceImageDetailView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0: -35)
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

// MARK: - PREVIEW
#Preview {
    PriceImageDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
}
