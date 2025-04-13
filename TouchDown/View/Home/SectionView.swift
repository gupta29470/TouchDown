//
//  SectionView.swift
//  TouchDown
//
//  Created by Aakash Gupta on 12/04/25.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotateClockwise: Bool
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - PREVIEW
#Preview {
    SectionView(
        rotateClockwise: false
    )
        .previewLayout(.fixed(width: 120, height: 240))
        .padding()
        .background(colorBackground)
}
