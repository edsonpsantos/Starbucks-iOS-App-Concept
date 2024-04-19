//
//  LaunchViewRouter.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI

enum LaunchViewRouter {
    
    static func makeSignInView() -> some View {

        let viewModel = SignInViewModel(homeViewModel: HomeViewModel())
        return SignInView(viewModel: viewModel)
    }
}
