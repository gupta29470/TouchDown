//
//  NavigationBarVIew.swift
//  TouchDown
//
//  Created by Aakash Gupta on 11/04/25.
//

import SwiftUI

struct NavigationBarVIew: View {
    // MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated = true
                    }
                })
            
            Spacer()
            
            Button(action: {
                
            }) {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }
        }//: HSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    NavigationBarVIew()
        .previewLayout(.sizeThatFits)
        .padding()
}
