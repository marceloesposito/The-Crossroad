//
//  RoutineModel.swift
//  greenapp
//
//  Created by Marcelo Esposito on 20/11/21.
//

import Foundation
import SwiftUI


struct RoutineModel {
    var allDay : Bool = false
    var routineName: String
    var routineCategory: String
    
    
//to add an enum or a switch to implement different methods per each routine category

    enum rCategory {
        case device, transportation, household, nutrition
    }
    
//    switch rCategory {
//    case .device:
//        print("device!")
//    case .transportation:
//        print("transportation!")
//    case .household:
//        print("household!")
//    case .nutrition:
//        print("nutrition!")
//    default:
//        print("error!")
//    }
}


//to implement a list of routines, with at least the four basic routines, custom other routines to be appended -> maybe just an array of routines?




struct routineButton: View {
    var title: String
    var icon: String
    var color: Color
    
    @Binding var isShowing : Bool
    
    var body: some View {
        Button {
            isShowing.toggle()
        } label: {
            VStack{
                Image(systemName:icon)
                    .font(.title)
                    .padding(3)
                Text(title)
                    .font(.title2)
            }.frame(width: 180, height: 120)
                .background(color)
                .cornerRadius(18)
                .foregroundColor(.white)
                .shadow(color: color, radius: 4, y: 2)
        }
    }
}
