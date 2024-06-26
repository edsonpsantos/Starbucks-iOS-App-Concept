//
//  ProductCell.swift
//  starbucks
//
//  Created by EDSON SANTOS on 19/04/2024.
//

import SwiftUI

struct SegmentedProductControl: View {
    var title: String = "All"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 48)
            .padding(.vertical, 8)
            .padding(.horizontal, 12)
            .ThemeColors(isSelected: isSelected)
            .cornerRadius(10)
    }
}

extension View {
    func ThemeColors(isSelected: Bool) -> some View {
        self
            .background(isSelected ? .darkGreen : .darkWhite)
            .foregroundStyle(isSelected ? .darkWhite : .darkGreen)
    }
}

#Preview {
    ZStack {
        
        VStack(spacing: 40) {
            SegmentedProductControl(title: "Cold Coffee")
            SegmentedProductControl(title: "Frapuccino", isSelected: true)
            SegmentedProductControl(title: "Hot Coffee")
        }
    }
}
