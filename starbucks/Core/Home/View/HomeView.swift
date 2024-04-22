//
//  HomeView.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var vm: HomeViewModel
    @State private var userName: String="John"
    @State private var selectedCategory: Categories? = nil
    @Binding var searchMenu: String
    
    @State private var searchText: String = ""
    var searchResult: [Products]{
        if searchText.isEmpty{
            return Products.products
        } else {
            return Products.products.filter {
                $0.name.contains(searchText)
            }
        }
    }
        
    var body: some View {
        
        ZStack{
            Color.background.ignoresSafeArea()
            
            VStack{
                HeaderView()
                
                SearchBarView(searchMenu: .constant(""))
                
                BannerView()
                
                ScrollView(.horizontal) {
                    HStack(spacing: 12){
                        ForEach(Categories.allCases, id: \.self){ product in
                        
                            SegmentedProductControl(title: product.rawValue.capitalized, isSelected: product == selectedCategory)
                                .onTapGesture {
                                    selectedCategory = product
                                }
                        }
                    }
                }
                .scrollIndicators(.hidden)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 0) {
                        ForEach(searchResult) { product in
                            ProductWidget(product: product)
                        }
                    }
                    .frame(maxHeight: .infinity)
                    .padding(.horizontal, 2)
                }
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    HomeView(vm: HomeViewModel(), searchMenu: .constant(""))
}
