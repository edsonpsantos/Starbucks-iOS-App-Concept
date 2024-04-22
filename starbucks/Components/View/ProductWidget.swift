//
//  ProductWidget.swift
//  starbucks
//
//  Created by EDSON SANTOS on 22/04/2024.
//

import SwiftUI

struct ProductWidget: View {
    var product: Products
    
    var body: some View {
        ZStack(alignment: .bottom){
            Rectangle()
                .fill(Color.theme.sbMediumGreen)
                .cornerRadius(25)
                .frame(maxWidth: .infinity, maxHeight: 256)
                .padding(.horizontal, 8)
        
            productWidgetSection
            
            CircleImageButtonView(imageName: "plus")
                .offset(x: 135, y: -135)
                .padding(.bottom, 10)
        }
        .frame(width: 342, height: 204, alignment: .bottom)

    }
    
    private var productWidgetSection: some View{
        VStack(alignment: .center, spacing: 2){
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                Text(product.name)
                    .font(.system(size: 28))
                    .fontWeight(.heavy)
                .foregroundStyle(Color.theme.sbDarkWhite)
                
                Text("\(product.size) size")
                    .font(.title3)
                    .foregroundStyle(Color.theme.sbDarkWhite)
                
                Text("€ \(product.price)")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.theme.sbLightGreen)
            }
            .padding(.bottom, 20)
        }
    }
}

#Preview {
    NavigationView{
        ScrollView(.horizontal) {
            HStack(spacing: 0) {
                ForEach(Products.products) { product in
                    ProductWidget(product: product)
                }
                .frame(maxHeight: .infinity)
            }
            .padding(.horizontal, 5)
        }
    }
}
