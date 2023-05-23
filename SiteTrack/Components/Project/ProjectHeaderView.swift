//
//  ProjectHeaderView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/23/23.
//

import SwiftUI



struct ProjectHeaderView: View {
    @Binding var selectedProjectIndex: SelectedProjectIndex
    
    var body: some View {
        HStack(spacing: 25) {
            ProjectIconView(selectedIndex: $selectedProjectIndex, index: .recent)
                .selectedView($selectedProjectIndex, index: .recent)
            
            
            ProjectIconView(selectedIndex: $selectedProjectIndex, index: .all)
                .selectedView($selectedProjectIndex, index: .all)
            
        }
    }
}
