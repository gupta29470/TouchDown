//
//  CategoryItem.swift
//  TouchDown
//
//  Created by Aakash Gupta on 12/04/25.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    let category: Category
    var body: some View {
        Button(action: {
            
        }) {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(
                    cornerRadius: 12
                ).stroke(Color.gray, lineWidth: 1)
            )
        }//: Button
    }
}

// MARK: - PREVIEW
#Preview {
    CategoryItemView(
        category: categories[0]
    )
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
