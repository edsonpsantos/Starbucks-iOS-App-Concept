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
    let sbBackground = Color("BackgroundColor")
    let sbWhite = Color("White")
    let sbDarkWhite = Color("darkWhite")
    let sbDarkGreen = Color("DarkGreenColor")
    let sbLightGreen = Color("LightGreenColor")
    let sbMediumGreen = Color("MediumGreenColor")
    let sbLightGrey = Color("LightGrey")
    let sbAccent = Color("OrangeColor")
    let sbText = Color("TextColor")
}
