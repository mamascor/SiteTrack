//
//  RememberView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI
struct RememberView: View {
    @Binding var rememberMe: Bool
    
    let action: ()-> Void
    
    var body: some View {
        HStack {
            HStack {
                HStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 25, height: 23)
                        .overlay(
                            Circle()
                                .stroke(Color.blueWhite, lineWidth: 2)
                        )
                    
                }
                
                .frame(width: 38, alignment: rememberMe ? .trailing : .leading)
                .background(rememberMe ? Color.blue : Color.accentColor)
                .clipShape(
                    RoundedRectangle(cornerRadius: 15)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.blueWhite, lineWidth: 2)
                )
                Text("Remember Me")
                    .foregroundColor(.loginBlue)
            }
            .onTapGesture {
                withAnimation(.linear(duration: 0.1)) {
                    rememberMe.toggle()
                }
            }
            
            Spacer()
            
            
            Button(action: action) {
                Text("Forgot Password?")
            }
            .foregroundColor(.accentWhite)
        }
        .padding(.horizontal)
    }
}
