//
//  Extension+Text.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI


extension Text {
    
    
    func tapIndex(_ selIndex: Binding<TabSelected>, index: TabSelected) -> some View {
        if selIndex.wrappedValue == index {
            return 
                self
                    .foregroundColor(.white)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 15)
                    .background(Color.activeBlue)
                    .cornerRadius(50)
            
            .eraseToAnyView()
        }  else {
            return
                self
                    .padding(.vertical, 8)
                    .padding(.horizontal, 15)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.2)) {
                            selIndex.wrappedValue = index
                        }
                    
            }
                .eraseToAnyView()
            
        }
    }
}


extension View {
    func eraseToAnyView() -> AnyView {
        return AnyView(self)
    }
}
