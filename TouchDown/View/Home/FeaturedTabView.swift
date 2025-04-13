//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Aakash Gupta on 11/04/25.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.horizontal, 16)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

// MARK: - PREVIEW
#Preview {
    FeaturedTabView()
        .background(Color.gray)
}
