//
//  Extension+View.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI


extension View {
    
    func isDividerSelected(_ selIndex: Binding<SelectedProjectIndex>, index: SelectedProjectIndex) -> some View {
        if selIndex.wrappedValue == index {
            return self.frame(height: 3).background(Color(.systemBlue)).eraseToAnyView()
        } else {
            return self.hidden().eraseToAnyView()
        }
    }    
}

extension View {
    
    func selectedView(_ selIndex: Binding<SelectedProjectIndex>, index: SelectedProjectIndex) -> some View {
        return self.onTapGesture {
                selIndex.wrappedValue = index
        }.eraseToAnyView()
    }
}


