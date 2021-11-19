//
//  RoutineView.swift
//  greenapp
//
//  Created by Marcelo Esposito on 16/11/21.
//

import Foundation
import SwiftUI

struct RoutineView: View {
    @State private var routineName: String = ""
    @State private var isEditing = false
    var titolo: String
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("New routine")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            TextField(
            "Routine name",
        text: $routineName
            ) { isEditing in
                    self.isEditing = isEditing
                }
            Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Category")) {
                Text("House").tag(1)
                Text("Nutrition").tag(2)
                Text("Transportation").tag(3)
            }
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Entire day")
            }
            DatePicker(selection: .constant(Date()), displayedComponents: DatePickerComponents.hourAndMinute, label: { Text("Start") })
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, displayedComponents: DatePickerComponents.hourAndMinute, label: { Text("End") })
            
            
                        
        }

        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RoutineView(titolo: "ciao")
.previewInterfaceOrientation(.portrait)
          
        }
    }
}
