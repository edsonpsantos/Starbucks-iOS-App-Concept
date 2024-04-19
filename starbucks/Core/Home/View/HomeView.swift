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
    @State private var selectedProduct: Products? = nil
    @Binding var searchMenu: String
    
    
    var body: some View {
        
        ZStack{
            Color.background.ignoresSafeArea()
            
            VStack{
                HeaderView()
                
                SearchBarView(searchMenu: .constant(""))
                
                BannerView()
                
                ScrollView(.horizontal) {
                    HStack(spacing: 0){
                        ForEach(Products.allCases, id: \.self){ product in
                        
                            SegmentedProductControl(title: product.rawValue.capitalized, isSelected: product == selectedProduct)
                                .onTapGesture {
                                    selectedProduct = product
                                }
                        }
                    }
                }
                    .scrollIndicators(.hidden)
            }
        }
        
        //        VStack(spacing: 0){
        //            VStack(alignment: .leading){
        //                headerSection
        //                searchBarSection
        //            }
        //            .padding(.horizontal, 16)
        //            .padding(.top, 56)
        //            .backgroundBlur(radius: 20, opaque: true)
        //            .ignoresSafeArea()
        //            .background(.red)
        //
        //            ScrollView(showsIndicators: false) {
        //                VStack{
        //                    ForEach(0..<20){_ in
        //                        Rectangle()
        //                            .background(.green)
        //                            .frame(width: 100, height: 50)
        //                    }
        //                }
        //            }
        //            .safeAreaInset(edge: .top) {
        //                EmptyView()
        //                    .frame(height: 10)
        //            }
        //        }
        
    }
    
    
}

#Preview {
    HomeView(vm: HomeViewModel(), searchMenu: .constant(""))
}
