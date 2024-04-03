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
                    Text("STARBUCKS")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.theme.darkGreen)
                        .padding(.horizontal, 8)
                    
                    Text("Welcome back!")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .padding(.horizontal, 8)
                        .padding(.bottom, 48)

                    emailField
                    passwordField
                    emailField
                    emailField
                    
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
            error: "Senha deve ter pelo menos 8 caracteres",
            failure: viewModel.password.count < 8,
            isSecure: true
        )
    }
    
  

}

#Preview {
    SignInView(viewModel: SignInViewModel(homeViewModel: HomeViewModel()))
}
