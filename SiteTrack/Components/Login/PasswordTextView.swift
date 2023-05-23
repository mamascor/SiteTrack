//
//  PasswordTextView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI

struct PasswordTextView: View {
    @Binding var text: String
    @Binding var showPassword: Bool
    let placeholderTitle: String
    
    @FocusState private var isTextFieldFocused: Bool
    
    var body: some View {
        if showPassword {
            TextField(placeholderTitle, text: $text)
                .padding(10)
        } else if !showPassword {
            SecureField(placeholderTitle, text: $text)
                .padding(10)
        }
        Image(systemName: showPassword ? "eye" : "eye.slash")
            .foregroundColor(.loginBlue)
            .padding(.horizontal, 8)
            .padding(.vertical, 5)
            .focused($isTextFieldFocused)
            .onTapGesture {
                showPassword.toggle()
                isTextFieldFocused = true
            }
    }
}

struct PasswordTextView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordTextView(text: .constant("Email"), showPassword: .constant(false), placeholderTitle: "Email")
    }
}
