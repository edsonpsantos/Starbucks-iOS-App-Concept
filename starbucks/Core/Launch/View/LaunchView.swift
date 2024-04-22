//
//  LaunchView.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI

struct LaunchView: View {
    
    @ObservedObject var viewModel: LaunchViewModel
    @Binding var showLaunchView: Bool
    
    var body: some View {
        
        Group{
            switch viewModel.uiState {
            case .loading:
                loadingView()
            case .goToSignInView:
                viewModel.SignInView()
            }
        }
        .onAppear(perform: {
            viewModel.onAppear()
        })
    }
}

extension LaunchView {
    func loadingView(error: String? = nil) ->some View{
        ZStack {
            Color.theme.sbDarkGreen.ignoresSafeArea()
            Image("loginBackground")

            Image("logo")
             
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)){
                        Alert(title: Text("StarBucks"),
                              message: Text(error),
                              dismissButton: .default(Text("OK"))
                        )
                    }
            }
        }
    }
}

#Preview {
    LaunchView(viewModel: LaunchViewModel(), showLaunchView: .constant(true))
}
