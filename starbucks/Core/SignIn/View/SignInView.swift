//
//  SignInView.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    var body: some View {
        ZStack{
            Color.theme.background.ignoresSafeArea()
            
            Image("loginBackground")
            
            HStack {
                VStack(alignment: .leading, spacing: 16){
                    HStack(spacing: 0) {
                        Text("STARBUCKS")
                            .font(.title)
                            .tracking(2)
                            .fontWeight(.heavy)
                            .foregroundStyle(Color.theme.darkGreen)
                        
                        Text("TM")
                            .font(.system(size: 8))
                            .padding(.bottom, 16)
                    }
                    .padding(.horizontal, 8)
                    .padding(.bottom, 16)
                    
                    Text("Welcome back!")
                        .font(.system(size: 32))
                        .fontWeight(.bold)
                        .padding(.horizontal, 8)
                        .padding(.bottom, 48)
                    
                    emailField
                    passwordField
                    
                    Text("Forgot your password?")
                        .font(.subheadline.bold())
                        .foregroundStyle(Color.theme.text)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.vertical, 16)
                        .onTapGesture {
                            //TODO: goToSignUpView
                        }
                    
                    LoadingButton(action: {
                        
                    }, text: "Log in")
                    
                    
                    Text("Copyright @Edson Santos 2024")
                        .foregroundColor(Color.gray)
                        .font(Font.system(size: 13).bold())
                        .padding(.top, 16)
                        .padding(.leading,80)
                    
                }
                .padding(.horizontal, 16)
                
            }
            
            
        }
    }
}

extension SignInView{
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
    
    
    
}

#Preview {
    SignInView(viewModel: SignInViewModel(homeViewModel: HomeViewModel()))
}
