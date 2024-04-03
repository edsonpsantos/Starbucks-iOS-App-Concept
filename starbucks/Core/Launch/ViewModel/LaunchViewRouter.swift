//
//  LaunchViewRouter.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI

enum LaunchViewRouter {
    
    static func makeSignInView() -> some View {
        return SignInView(viewModel: SignInViewModel(homeViewModel: HomeViewModel()))
    }
}
