//
//  OnboardingView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/23/23.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var isShowingLogin = false
    
    var body: some View {
        ZStack {
            OnboardingSubview {
                withAnimation {
                    isShowingLogin = true
                }
                
            }
            
            if isShowingLogin {
                LoginView()
                    .transition(.push(from: .trailing))
                    .animation(.linear(duration: 0.1))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.accentColor)
        
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct OnboardingSubview: View {
    
    let action: ()-> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Spacer()
            VStack(alignment: .leading) {
                Text("Manage your")
                Text("project & team")
                
                HStack {
                    Text("with")
                    Text("SiteTrack")
                        .foregroundColor(.activeBlue)
                }
            }
            .foregroundColor(.accentWhite)
            .font(.title)
            .fontWeight(.bold)
            
            Text("Streamline construction projects with our efficient project management app.")
                .fontWeight(.light)
                .foregroundColor(.gray)
            
           
            
            Button(action: action) {
                HStack {
                    Text("Get started")
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.vertical)
                .background(Color.activeBlue)
                .cornerRadius(10)
            }
           
            .padding(.top, 40)
        }
        .padding()
        .padding(.bottom, 25)
    }
}
