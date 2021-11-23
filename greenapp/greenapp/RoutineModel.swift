//
//  RoutineModel.swift
//  greenapp
//
//  Created by Marcelo Esposito on 20/11/21.
//

import SwiftUI



class Routine: ObservableObject {
    
    @Published var routineTitle: String = ""
    @Published var routineCategory : String = ""
    
    var co2footprint: Double = 0.0

    func footprintCalculator() -> Double {
        return 0
    }
    
    init(name: String, category: String){
        self.routineTitle = name
        self.routineCategory = category
    }
    
}

class HouseRoutine: Routine{
    var familyMembers: Double = 0
    var energyConsumption: Double = 0.0
    let emissionsFactor: Double = 256.2
    
    override func footprintCalculator() -> Double {
        co2footprint = (energyConsumption*emissionsFactor)/familyMembers
        return co2footprint
    }
    
}

class TransportationRoutine : Routine {
    @Published var miles: Double = 0.0
    
    enum typeOfVehicle{
        case car
        case train
        case bus
        case airplane
    }
    var vehicle = typeOfVehicle.car

    override func footprintCalculator() -> Double {
        
        return co2footprint
    }

}
//to implement a list of routines, with at least the four basic routines, custom other routines to be appended -> maybe just an array of routines?

var RoutineStore: [Routine] = []



struct routineButton: View {
    var title: String
    var icon: String
    var color: Color
    
    @Binding var isShowing : Bool
    
    var body: some View {
        
        NavigationLink(destination: RoutineProgressView(routineName: title)) {
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


struct addRoutineButton: View {
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
