//
//  NameHeader.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI

struct NameHeader: View {
    
    let name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("\(name) 👋")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .foregroundColor(Color.accentWhite)
        .padding(.horizontal)
    }
}
