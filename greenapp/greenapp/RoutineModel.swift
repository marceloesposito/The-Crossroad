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
    
    init(name: String, category: String, family: Double, energy: Double) {
        super.init(name: name, category: category)
        self.familyMembers = family
        self.energyConsumption = energy
    }
}


class TransportationRoutine : Routine {
    @Published var kilometers: Double = 0.0
    @Published var fuelConsumptionOn100K: Double = 0
    @Published var vehicle = typeOfVehicle.car
    @Published var passengers: Double = 0.0
    let fuelCombustionCoefficient: Double = 2.33
    let fuelProductionCoefficient: Double = 0.43
    let carManufacturingConstant: Double = 32
    
    enum typeOfVehicle{
        case car
        case train
        case bus
        case airplane
    }
    override func footprintCalculator() -> Double {
        
        switch vehicle {
        case .car:
            co2footprint = ((((fuelCombustionCoefficient*fuelConsumptionOn100K)/100)+(fuelProductionCoefficient*fuelConsumptionOn100K)/100)+(32*kilometers))/passengers
        case .train:
            co2footprint = (kilometers*42)
        case .bus:
            co2footprint = (kilometers*36)
        case .airplane:
            co2footprint = (kilometers*141)
        }
        return co2footprint
    }
    
    
    
}
//to implement a list of routines, with at least the four basic routines, custom other routines to be appended -> maybe just an array of routines?

var RoutineStore: [Routine] = []



struct HouseRoutineButton: View {
    var title: String
    var icon: String
    var color: Color
    //    var destinationView: AnyView = AnyView(TranspProgressView(routineName: "My Car"))
    
    @Binding var isShowing : Bool
    
    var body: some View {
        
        NavigationLink(destination: RoutineProgressView(routineName: "My House")) {
            VStack{
                Image(systemName:icon)
                    .font(.title)
                    .padding(3)
                Text(title)
                    .font(.title2)
            }.frame(width: 160, height: 100)
                .background(color)
                .cornerRadius(18)
                .foregroundColor(.white)
                .shadow(color: color, radius: 4, y: 2)
        }
    }
}

struct TransportationRoutineButton: View {
    var title: String
    var icon: String
    var color: Color
    //    var destinationView: AnyView = AnyView(TranspProgressView(routineName: "My Car"))
    
    @Binding var isShowing : Bool
    
    var body: some View {
        
        NavigationLink(destination: TranspProgressView(routineName: "My Car")) {
            VStack{
                Image(systemName:icon)
                    .font(.title)
                    .padding(3)
                Text(title)
                    .font(.title2)
            }.frame(width: 160, height: 100)
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
            }.frame(width: 160, height: 100)
                .background(color)
                .cornerRadius(18)
                .foregroundColor(.white)
                .shadow(color: color, radius: 4, y: 2)
        }
    }
}
