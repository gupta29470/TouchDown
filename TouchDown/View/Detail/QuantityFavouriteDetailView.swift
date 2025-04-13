//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by Aakash Gupta on 12/04/25.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - PROPERTIES
    @State private var cartCounter: Int = 0
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(
                action: {
                    if cartCounter > 0 {
                        cartCounter = cartCounter - 1
                    }
                },
                label: {
                    Image(systemName: "minus.circle")
                }
            )
            
            
            Text("\(cartCounter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(
                action: {
                    cartCounter = cartCounter + 1
                },
                label: {
                    Image(systemName: "plus.circle")
                }
            )
            
            Spacer()
            
            Button(
                action: {
                    cartCounter = cartCounter + 1
                },
                label: {
                    Image(systemName: "heart.circle")
                        .foregroundColor(.pink)
                }
            )
        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

// MARK: - PREVIEW
#Preview {
    QuantityFavouriteDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
