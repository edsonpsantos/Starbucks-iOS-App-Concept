//
//  CircleImageButtonView.swift
//  starbucks
//
//  Created by EDSON SANTOS on 22/04/2024.
//

import SwiftUI

struct CircleImageButtonView: View {
    let imageName: String
    
    var body: some View {
        Button(action: {
            
        }) {
            ZStack{
                Circle()
                    .fill(Color.theme.sbAccent)
                
                Image(systemName: imageName)
                    .font(.largeTitle)
                    .foregroundStyle(Color.theme.sbWhite)
            }
        }
        .frame(width: 72, height: 72)
    }
}

#Preview {
    CircleImageButtonView(imageName: "plus")
}


