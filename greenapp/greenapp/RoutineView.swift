//
//  RoutineView.swift
//  greenapp
//
//  Created by Marcelo Esposito on 16/11/21.
//

import Foundation
import SwiftUI


//make identifiable
class Routine {
//    var id: ObjectIdentifier
    var routineName : String
    var icon : String
    var category : String
    var startHour : Int
    var startMinute : Int
    var endHour : Int
    var endMinute : Int
    var allDay: Bool
    
    init (routineName : String, icon : String, category : String, startHour : Int , startMinute : Int, endHour : Int, endMinute : Int, allDay : Bool){
//        self.id = UUID()
    self.routineName = routineName
    self.icon = icon
    self.category = category
    self.startHour = startHour
    self.startMinute = startMinute
    self.endHour = endHour
    self.endMinute = endMinute
    self.allDay = allDay
    }
}

var routines : [Routine] = [
    Routine(routineName: "Transportation", icon: "car.fill", category: "transportation", startHour: 19, startMinute: 00, endHour: 20, endMinute: 00, allDay: false)
    
]


struct RoutineView: View {
    
    var titolo: String
    
    var body: some View {
        NavigationView{
    Text(titolo)
                .navigationTitle(titolo)
    }
    }
}
