//
//  SignInUIState.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import Foundation

enum SignInUIState: Equatable {
    case none
    case loading
    case goToHomeView
    case error(String)
}
