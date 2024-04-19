//
//  View.swift
//  starbucks
//
//  Created by EDSON SANTOS on 19/04/2024.
//

import SwiftUI

extension View {
    
    func backgroundBlur(radius: CGFloat = 3, opaque: Bool = false) -> some View {
        self
            .background(
                Blur(radius: radius, opaque: opaque)
            )
    }
}
