//
//  BannerView.swift
//  starbucks
//
//  Created by EDSON SANTOS on 19/04/2024.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        Image("banner")
            .resizable()
            .scaledToFit()
            .padding(.vertical, 16)
            .padding(.horizontal, 16)
    }
}

#Preview {
    BannerView()
}
