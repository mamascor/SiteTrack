//
//  CalendarView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/23/23.
//

import SwiftUI

struct CalendarView: View {
    
    private var columnGrid = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    @State private var days: Days = .sun
    
    let daysOfWeek: [Days] = [.sun, .mon, .tue, .wed, .thu, .fri, .sat]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columnGrid) {
                ForEach(daysOfWeek, id: \.self) { day in
                    Text(String.extensions.getNameOfWeek(day))
                }
                
                ForEach(1..<31) { daynumber in
                    Text("")
                    Text("\(daynumber)")
                }
                
            }
        }
        .padding()
    }
    
   
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}

enum Days{
    case sun,mon,tue,wed,thu,fri,sat
}


extension String {
    
    static let extensions = String()
    
    func getNameOfWeek( _ day: Days )-> String{
        var dayTitle: String {
            switch day {
            case .sun:
                return "Sun"
            case .mon:
                return "Mon"
            case .tue:
                return "Tue"
            case .wed:
                return "Wed"
            case .thu:
                return "Thu"
            case .fri:
                return "Fri"
            case .sat:
                return "Sat"
            }
        }
        
        return dayTitle
    }
}


