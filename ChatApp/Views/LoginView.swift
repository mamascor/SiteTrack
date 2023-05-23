//
//  LoginView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI

struct LoginView: View {
    @State private var isLogin = true
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    
    @State private var fname = ""
    @State private var lname = ""
    
    @State private var rememberMe = false
    
    @State private var accemtTOS = false
    
    @State private var presentHomeView = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Image("login_image")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                
                SubLoginView(isLogin: $isLogin, email: $email, password: $password, rememberMe: $rememberMe, fname: $fname, lname: $lname, confirmPassword: $confirmPassword, accemtTOS: $accemtTOS, presentHomeView: $presentHomeView)
                    .frame(maxHeight: .infinity)
                
            
            }
            .frame(maxHeight: .infinity)
            .background( LinearGradient(gradient: Gradient(colors: [Color.blue,Color.accentColor, Color.accentColor]),
                                        startPoint: .top,
                                        endPoint: .bottom ))
        }
        .frame(maxHeight: .infinity)
        .fullScreenCover(isPresented: $presentHomeView) {
            HomeView()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}



enum TextFieldType{
    case email
    case firstname
    case lastname
    case password
    case confitmPassword
}






struct SubLoginView: View {
    
    @Binding var isLogin: Bool
    @Binding var email: String
    @Binding var password: String
    @Binding var rememberMe: Bool
    @Binding var fname: String
    @Binding var lname: String
    @Binding var confirmPassword: String
    @Binding var accemtTOS: Bool
    @Binding var presentHomeView: Bool
    
    var body: some View {
        VStack {
            LoginPickerView(isLogin: $isLogin)
                .padding(.top, 35)
            
            
            if isLogin {
                withAnimation(.linear(duration: 0.5))  {
                    VStack {
                        VStack(spacing: 0) {
                            CustomTextField(text: $email, textfieldTitle: .email)
                                .padding()
                            CustomTextField(text: $password, textfieldTitle: .password)
                                .padding()
                        }
                        
                        RememberView(rememberMe: $rememberMe) {
                            print("Button Pressed")
                        }
                        .padding(.bottom, 20)
                        
                        
                        Button(action: {
                            presentHomeView.toggle()
                        }) {
                            Text("Login")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical)
                                .background(Color.blue)
                                .cornerRadius(12)
                        }
                        .padding(.horizontal)
                    }
                    
                    
                }
            } else {
                withAnimation(.linear(duration: 2)) {
                    VStack {
                        VStack(spacing: 0) {
                            HStack(spacing: 20) {
                                CustomTextField(text: $fname, textfieldTitle: .firstname)
                                
                                CustomTextField(text: $lname, textfieldTitle: .lastname)
                            }
                            .padding()
                            CustomTextField(text: $email, textfieldTitle: .email)
                                .padding()
                            CustomTextField(text: $password, textfieldTitle: .password)
                                .padding()
                            CustomTextField(text: $confirmPassword, textfieldTitle: .confitmPassword)
                                .padding()
                            
                            HStack {
                                HStack{
                                    Image(systemName:accemtTOS ? "checkmark.seal" : "seal")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .foregroundColor(.accentWhite)
                                        .clipShape(Circle())
                                    
                                    Text("Accept terms of service?")
                                        .font(.callout)
                                }
                                .onTapGesture {
                                    
                                    withAnimation(.easeInOut(duration: 0.1)) {
                                        accemtTOS.toggle()
                                    }
                                    
                                }
                                
                                
                                Spacer()
                                
                                Text("See TOS")
                                    .foregroundColor(.blue)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.vertical)
                            
                        }
                        
                        Button(action: {}) {
                            Text("Register")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical)
                                .background(Color.blue)
                                .cornerRadius(12)
                        }
                        .padding(.horizontal)
                    }
                    
                }
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.accentColor)
        .cornerRadius(30, corners: [.topLeft, .topRight])
        .offset(y: -100)
    }
}
