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
    let frequencyOptions: [String] = [
        "Yearly",
    "Monthly",
    "Weekly",
    "Daily"
    ]
    let vehicleOptions: [String] = [
    "Car",
    "Train",
    "Bus",
    "Airplane"
    ]
    
   
    
    var body: some View {
        
        
        VStack{
            
            Form{
                Section{
                    Picker(selection: $vehicleType) {
                        ForEach(vehicleOptions, id:\.self){option in Text(option).tag(option)}
                    } label: {
                        Text("Vehicle type")
                    }
                    .labelsHidden()
                    .pickerStyle(.inline)
                }header: {
                    Text("Vehicle type")
                }
    
                Section {
                    
                    Picker(selection: $frequency) {
                        ForEach(frequencyOptions, id:\.self){option in
                            Text(option).tag(option)
                    
                            
                        }
                    } label: {
                        Text("frequency")
                    }
                    
                    
                } header: {
                    Text("Recurrency")
                }
                .labelsHidden()
                .pickerStyle(.inline)
  
                Section {
                    Stepper(value: $kilometers, in: 0...1000, step: 100) {
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
