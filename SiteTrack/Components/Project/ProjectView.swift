//
//  ProjectView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import SwiftUI

struct ProjectView: View {
    @State var selectedProjectIndex: SelectedProjectIndex = .recent
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .top){
                ProjectHeaderView(selectedProjectIndex: $selectedProjectIndex)
                
                Spacer()
                
                Image("calendar")
                    .tapImage($selectedProjectIndex, index: .calendar)
            }
            
            if selectedProjectIndex == .calendar {
                CalendarView()
            }
            
            
        }
        .padding(.horizontal)
        .padding(.top, 25)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView()
    }
}



