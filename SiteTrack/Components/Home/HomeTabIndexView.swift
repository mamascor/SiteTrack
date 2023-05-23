//
//  HomeTabIndexView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI

struct HomeTabIndexView: View {
    @Binding var tabSelected: TabSelected
    
    var body: some View {
        if tabSelected == .project{
            ProjectView()
        } else if tabSelected == .productivity {
            ProductivityView()
        }
    }
}

struct HomeTabIndexView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabIndexView(tabSelected: .constant(.project))
    }
}
