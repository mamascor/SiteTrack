//
//  ProjectIconView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/23/23.
//

import SwiftUI


struct ProjectIconView: View {
    
    @Binding var selectedIndex: SelectedProjectIndex
    
    let index: SelectedProjectIndex
    
    var body: some View {
        VStack {
            Text(selectedTitle)
                .font(.callout)
                .fontWeight(.semibold)
            
            Divider()
                .frame(height: 3 )
                .background(selectedIndex == index ? Color.activeBlue : .clear)
        }
        .frame(width: 70)
        
       
    }
    
    
    var selectedTitle: String {
        switch index {
        case .recent:
            return "Recent"
        case .all:
            return "All"
        case .calendar:
            return ""
        }
    }
    
    
}
