//
//  HeaderView.swift
//  starbucks
//
//  Created by EDSON SANTOS on 19/04/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(){
            Text("Starbucks")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.darkGreen)
            
            Spacer()
            
            HStack {
                Image(systemName: "bell")
                    .padding()
                
                Image(systemName: "ellipsis.bubble")
            }
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(.darkGreen)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    HeaderView()
}
