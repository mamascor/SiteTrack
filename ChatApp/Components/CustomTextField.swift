//
//  CustomTextField.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var text : String
    
    let  textfieldTitle: TextFieldType
    
    @State private var showPassword = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            if textfieldTitle == .email || textfieldTitle == .firstname || textfieldTitle == .lastname {
                TextField(placeholderTitle, text: $text)
                    .keyboardType(.emailAddress)
                    .keyboardShortcut(.defaultAction)
                    .scrollDismissesKeyboard(.immediately)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.loginBlue, lineWidth: 2)
                    )
                Text(textFieldTitle)
                    .font(.callout)
                    .foregroundColor(.loginBlue)
                    .padding(3)
                    .background(Color.accentColor)
                    .offset(x:  10, y: -13)
            } else if textfieldTitle == .password || textfieldTitle == .confitmPassword{
                HStack {
                    PasswordTextView(text: $text, showPassword: $showPassword, placeholderTitle: textFieldTitle)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.loginBlue, lineWidth: 2)
                )
              
                
                   
                Text(textFieldTitle)
                    .font(.callout)
                    .foregroundColor(.loginBlue)
                    .padding(3)
                    .background(Color.accentColor)
                    .offset(x:  10, y: -13)
            }
        }
    }
    
    var textFieldTitle: String {
        switch textfieldTitle {
        case .email:
            return "Email Address"
        case .firstname:
            return "First Name"
        case .password:
            return "Password"
        case .confitmPassword:
            return "Confirm Password"
        case .lastname:
            return "Last Name"
        }
    }
    
    
    var placeholderTitle: String {
        switch textfieldTitle {
        case .email:
            return "Email Adress"
        case .firstname:
            return "John"
        case .password:
            return "Enter your password"
        case .confitmPassword:
            return "Confirm Password"
        case .lastname:
            return "Doe"
        }
    }
}


struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""), textfieldTitle: .email)
    }
}
