//
//  ContentView.swift
//  TouchDown
//
//  Created by Aakash Gupta on 11/04/25.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
                ZStack {
                    if shop.showingProduct == false && shop.selectedProduct == nil {
                        VStack(spacing: 0) {
                            NavigationBarVIew()
                                .padding(.horizontal, 16)
                                .padding(.bottom)
                                .padding(
                                    .top,
                                    UIApplication.shared.windows.first?.safeAreaInsets.top
                                )
                                .background(Color.white)
                                .shadow(
                                    color: Color.black.opacity(0.05),
                                    radius: 5, x: 0, y: 5
                                )
                            
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack(spacing: 0) {
                                    FeaturedTabView()
                                        .padding(.vertical, 20)
                                        .frame(height: UIScreen.main.bounds.width / 1.475)
                                    
                                    CategoryGridView()
                                    
                                    TitleView(title: "Helmets")
                                    
                                    LazyVGrid(columns: gridLayout, spacing: 15) {
                                        ForEach(products) { product in
                                            ProductItemView(product: product)
                                                .onTapGesture {
                                                    withAnimation(.easeOut) {
                                                        shop.showingProduct = true
                                                        shop.selectedProduct = product
                                                    }
                                                }
                                        }
                                    }
                                    .padding(16)
                                    
                                    TitleView(title: "Brands")
                                    
                                    BrandGridView()
                                    
                                    FooterView()
                                        .padding(.horizontal)
                                }//: VStack
                            }//: ScrollView
                        }//: VStack
                        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                    } else {
                        ProductDetailView()
                }
            }//: ZStack
                .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
        .environmentObject(Shop())
}
