//
//  LoadingButton.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI

struct LoadingButton: View {
    
    var action: () -> Void
    var text: String
    var disabled: Bool = false
    var showProgressBar: Bool = false
    
    var body: some View {
        ZStack{
            Button {
                action()
            } label: {
                Text(showProgressBar ? "" : text)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 16)
                    .font(.system(.title3).bold())
                    .background(
                        disabled ? Color.theme.lightGreen :
                            Color.theme.mediumGreen
                    )
                    .foregroundStyle(Color.theme.white)
                    .cornerRadius(5)
            }.disabled(disabled || showProgressBar)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .opacity(showProgressBar ? 1 : 0)
        }
    }
}

#Preview {
    LoadingButton(action: {
        print("Ola Mundo!")
    }, text: "Entrar", disabled: false, showProgressBar: false
    )
    .padding()
}
