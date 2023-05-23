//
//  LoginPickerView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI


struct LoginPickerView: View {
    
    @Binding var isLogin: Bool
    
    var body: some View {
        HStack(spacing: 80) {
            VStack {
                Text("Login")
                    .fontWeight(.semibold)
                    .foregroundColor(.loginBlue)
                    .font(.title2)
                
                if isLogin {
                    Divider()
                        .frame(width: 90,height: 3) // Set the height of the divider
                        .background(Color.loginBlue) // Set the back
                } else {
                    Divider()
                        .frame(width: 90,height: 3)
                }
                
            }
            .onTapGesture {
                withAnimation(.easeOut(duration: 0.1)) {
                    isLogin = true
                }
            }
            
            VStack {
                Text("Sign Up")
                    .fontWeight(.semibold)
                    .foregroundColor(.loginBlue)
                    .font(.title2)
                
                if !isLogin {
                    Divider()
                        .frame(width: 90,height: 3) // Set the height of the divider
                        .background(Color.loginBlue) // Set the back
                } else {
                    Divider()
                        .frame(width: 90,height: 3)
                }
                
                
                
            }
            .onTapGesture {
                withAnimation(.easeOut(duration: 0.1)) {
                    isLogin = false
                }
            }
        }
    }
}


struct LoginPickerView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPickerView(isLogin: .constant(true))
    }
}
