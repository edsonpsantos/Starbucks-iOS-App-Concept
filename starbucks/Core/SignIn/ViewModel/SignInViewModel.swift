//
//  SignInViewMovel.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI

class SignInViewModel: ObservableObject {
    
    private let homeViewModel: HomeViewModel
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var uiState: SignInUIState = .none
    
    init(homeViewModel: HomeViewModel) {
        self.homeViewModel = homeViewModel
    }
    
    func login(){
        
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now()+5){
            self.uiState = .goToHomeView
        }
    }
}


extension SignInViewModel{
    func homeView()-> some View{
        return SignInViewRouter.makeHomeView(homeViewModel: homeViewModel)
    }
}
