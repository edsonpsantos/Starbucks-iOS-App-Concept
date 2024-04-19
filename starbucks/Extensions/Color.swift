//
//  Color.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
    
}

struct ColorTheme {
    let background = Color("BackgroundColor")
    let white = Color("White")
    let darkGreen = Color("DarkGreenColor")
    let lightGreen = Color("LightGreenColor")
    let mediumGreen = Color("MediumGreenColor")
    let lightGrey = Color("LightGrey")
    let accent = Color("OrangeColor")
    let text = Color("TextColor")
}
