//
//  TabProView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI

struct TabProView: View {
    
    @Binding var tabSelected: TabSelected
    
    var body: some View {
        HStack {
            HStack(spacing: 30) {
                Text("Project")
                    .fontWeight(.semibold)
                    .tapIndex($tabSelected, index: .project)
                
                
                
                Text("Productivity")
                    .fontWeight(.semibold)
                    .tapIndex($tabSelected, index: .productivity)
            }
            
            Spacer()
            
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
    }
}

