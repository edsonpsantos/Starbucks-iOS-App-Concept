//
//  LaunchViewModel.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI


class LaunchViewModel: ObservableObject {
    
    @Published var uiState:LauchUIState = .loading
    
    func onAppear(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.uiState = .goToSignInView
        }
    }
}

extension LaunchViewModel{
    
    func SignInView() -> some View {
        return LaunchViewRouter.makeSignInView()
    }
}
