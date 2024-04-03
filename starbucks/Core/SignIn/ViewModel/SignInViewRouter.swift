//
//  SignInViewRouter.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI


enum SignInViewRouter{
    
    static func makeHomeView(homeViewModel: HomeViewModel) -> some View {
        return HomeView(vm: homeViewModel)
    }
    
}
