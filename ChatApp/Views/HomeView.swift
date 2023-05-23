//
//  HomeView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var tabSelected: TabSelected = .project
    
    var body: some View {
        VStack(alignment: .leading) {
            NameHeader(name: "Marco Mascorro")
               
            TabProView(tabSelected: $tabSelected)
            
            HomeTabIndexView(tabSelected: $tabSelected)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .background(Color.accentColor)
    }
    
    var indexTitle: String {
        switch tabSelected {
        case .project:
            return "Product"
        case .productivity:
            return "Productivity"
        case .calendar:
            return "calendar"
        }
    }
    
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


