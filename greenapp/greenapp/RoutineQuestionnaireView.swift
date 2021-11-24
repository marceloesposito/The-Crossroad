//
//  RoutineQuestionnaireView.swift
//  greenapp
//
//  Created by Marcelo Esposito on 22/11/21.
//

import SwiftUI



struct transportationRoutineQuestionnaireView: View {
    
    @State var kilometers: Int = 0
    @State var vehicleType: String = ""
    @State var frequency: String = ""
//    @Binding var routineName: String
    
//    @StateObject var myCar: TransportationRoutine = TransportationRoutine(name: routineName, category: "Transportation")
    
    enum frequencyOptions: String, CaseIterable{
        case yearly = "Yearly"
        case monthly = "Monthly"
        case weekly = "Weekly"
        case daily = "Daily"
    }
    var stepperValue: Int = 100
    
    @State private var frequencyOption: frequencyOptions = .daily
    

    
    enum vehicleOptions: String, CaseIterable{
        case car = "Car"
        case train = "Train"
        case bus = "Bus"
        case airplane = "Airplane"
    }
    @State private var vehicleOption: vehicleOptions = .car
    
   
    
    var body: some View {
        
        
        VStack{
            
            Form{
                Section{
                    
                        Picker(selection: $vehicleOption) {
                            ForEach(vehicleOptions.allCases, id:\.self){vehicles in
                                Text(vehicles.rawValue)
                            }
                        } label: {
                            Text("Vehicle type")
                        }
                        .labelsHidden()
                        .pickerStyle(.inline)
                    
                    
                }header: {
                    Text("Vehicle type")
                }
    
                Section {
                    DisclosureGroup(content: {
                        Picker(selection: $frequencyOption) {
                            ForEach(frequencyOptions.allCases, id:\.self){option in
                                Text(option.rawValue)
                            }
                        } label: {
                            Text("frequency")
                        }
                    }, label: {
                        Text("\(frequencyOption.rawValue)")
                    })
                        
                    
                    
                    
                    
                } header: {
                    Text("Recurrency")
                }
                .labelsHidden()
                .pickerStyle(.inline)

                
                Section {
                    Stepper(value: $kilometers, in: 0...1000, step: stepperValue) {
                        Text("\(kilometers) km")
                        }
                } header: {
                    Text("Kilometers travelled")
                }
                
                Section {
                    Label {
                        Text("fooprint")
                    } icon: {
                        
//            here you can insert a ternary operator to change the icon: orange flame if negative footprint, green leaf if positive footprint
                        Image(systemName: "abc")
                    }

                } header: {
                    Text("Your Footprint")
                }
                
            }
            
        }

        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Done") {
                    print("save function")
                
            }
        }
        }
        
        
    }
}

struct RoutineQuestionnaireView_Previews: PreviewProvider {
    static var previews: some View {
        transportationRoutineQuestionnaireView()
    }
}
