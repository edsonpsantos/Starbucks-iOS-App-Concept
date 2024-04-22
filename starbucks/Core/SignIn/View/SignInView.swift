//
//  SignInView.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    @State var action: Int? = 0
    @State var navigationHidden = true
    
    var body: some View {
        ZStack{
            Color.theme.sbBackground.ignoresSafeArea()
        
            Image("loginBackground")
        
            if case SignInUIState.goToHomeView = viewModel.uiState {
                viewModel.homeView()
            } else {
                
                NavigationView {
                    ScrollView(.vertical, showsIndicators: false) {
                        HStack {
                            VStack(alignment: .leading, spacing: 16){
                                Spacer(minLength: 100)
                                
                                headerSection
                                
                                emailField
                                passwordField
                                
                                forgot
                                
                                enterButton
                                
                                copyright
                                
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.horizontal, 16)
                    .navigationBarHidden(navigationHidden)
                }
            }
        }
    }
}

extension SignInView{
    
    var headerSection: some View{
        Group{
            HStack(spacing: 0) {
                Text("STARBUCKS")
                    .font(.title)
                    .tracking(2)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.theme.sbDarkGreen)
                
                Text("TM")
                    .font(.system(size: 8))
                    .padding(.bottom, 16)
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 8)
            
            Text("Welcome back!")
                .font(.system(size: 32))
                .fontWeight(.bold)
                .padding(.horizontal, 8)
                .padding(.bottom, 48)
        }
    }
    
    var emailField: some View{
        EditTextView(
            text: $viewModel.email,
            placeholder: "E-mail",
            keyboard: .emailAddress,
            error: "E-mail inválido",
            failure: !viewModel.email.isEmail()
            
        ).autocapitalization(.none)
    }
    
    var passwordField: some View{
        EditTextView(
            text: $viewModel.password,
            placeholder: "Senha",
            keyboard: .numberPad,
            iconName: "eye",
            error: "Senha deve ter pelo menos 8 caracteres",
            failure: viewModel.password.count < 8,
            isSecure: true
        )
    }
    
    var forgot: some View{
        Text("Forgot your password?")
            .font(.subheadline.bold())
            .foregroundStyle(Color.theme.sbText)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.vertical, 16)
            .onTapGesture {
                //TODO: goToSignUpView
            }
    }
    
    var enterButton: some View{
        LoadingButton(action: {viewModel.login()},
                      text: "Log in",
                      disabled: !viewModel.email.isEmail() || viewModel.password.count < 8,
                      showProgressBar: self.viewModel.uiState == SignInUIState.loading
        )
    }
    
    var copyright: some View {
        Text("Copyright @Edson Santos 2024")
            .foregroundColor(Color.gray)
            .font(Font.system(size: 13).bold())
            .padding(.top, 16)
            .padding(.leading,80)
    }
    
}

#Preview {
    VStack{
        SignInView(viewModel: SignInViewModel(homeViewModel: HomeViewModel()))
    }.frame(maxWidth: .infinity, maxHeight: .infinity)
}
