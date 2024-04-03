//
//  EditTextView.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI

struct EditTextView: View {
    
    @Binding var text: String
    
    var placeholder: String
    var mask: String? = nil
    var keyboard: UIKeyboardType = .default
    var autoCapitalization: UITextAutocapitalizationType = .none
    
    var error: String? = nil
    var failure: Bool? = nil
    var isSecure: Bool = false
    
    var body: some View {
        
        VStack{
            if isSecure {
                SecureField(placeholder, text: $text)
                    .foregroundStyle(Color.theme.text)
                    .keyboardType(keyboard)
                    .textFieldStyle(CustomTextFieldStyle())
            }
            else {
                TextField(placeholder, text: $text)
                    .foregroundStyle(Color.theme.text)
                    .keyboardType(keyboard)
                    .autocapitalization(autoCapitalization)
                    .textFieldStyle(CustomTextFieldStyle())
                    .onChange(of: text) { value in
                        if let mask = mask {
                            Mask.mask(mask: mask, value: value, text: &text)
                        }
                    }
            }
            if let error = error, failure==true, !text.isEmpty {
                Text(error).foregroundStyle(.red)
            }
        }
        .padding(.bottom, 12)
    }
}

#Preview {
    ForEach(ColorScheme.allCases, id: \.self) { colorValue in
        VStack{
            EditTextView(text: .constant("Teste"),
                         placeholder: "E-mail",
                         error:"Campo inválido",
                         failure: "2@2".count<2)
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .previewDevice("iPhone 15")
        .preferredColorScheme(colorValue)
    }
}
