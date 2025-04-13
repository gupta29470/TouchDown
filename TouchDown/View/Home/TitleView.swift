//
//  TitleVIew.swift
//  TouchDown
//
//  Created by Aakash Gupta on 12/04/25.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    let title: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

// MARK: - PREVIEW
#Preview {
    TitleView(
        title: "Helmet"
    )
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
