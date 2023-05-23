//
//  Extension+Image.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI


extension Image {
    func tapImage(_ selIndex: Binding<TabSelected>, index: TabSelected) -> some View {
        
        if selIndex.wrappedValue == index {
            return self
                .foregroundColor(.white)
                .padding(3)
                .background(Color.activeBlue)
                .cornerRadius(6)
                .eraseToAnyView()
        } else {
            return self
                .foregroundColor(.accentWhite)
                .padding(3)
                .onTapGesture {
                    withAnimation(.easeOut(duration: 0.1)) {
                        selIndex.wrappedValue = index
                    }
                }
                .eraseToAnyView()
               
        }
    }
}
