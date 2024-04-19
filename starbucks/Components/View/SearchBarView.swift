//
//  SearchBarView.swift
//  starbucks
//
//  Created by EDSON SANTOS on 19/04/2024.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchMenu: String
    
    var body: some View {
        HStack {
            HStack(spacing: 0){
                TextField("Search you menu", text: $searchMenu)
                    .font(.title3)
                    .foregroundStyle(.darkGreen)
                
                Image(systemName: "magnifyingglass")
                    .font(.title2)
                    .foregroundStyle(.darkGreen)
            }
            .padding(.horizontal, 16)
            .padding(.horizontal, 6)
            .padding(.vertical, 7)
            .frame(height: 60, alignment: .trailing)
            .background(
                Color.lightGreen, in: RoundedRectangle(cornerRadius: 10)
            )
            Image("filter")
                .resizable()
                .scaledToFill()
                .frame(width: 42, height: 42)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    SearchBarView(searchMenu: .constant(""))
}
