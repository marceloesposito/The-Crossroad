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
    @State var categories: String = "Category"
    @State var toggleIsOn: Bool = false
    @State private var repetitionIndex = 0
    var repetitions = ["Never", "Every day", "Every week", "Every 2 weeks", "Every month"]
    let categoryOptions : [String] = ["None", "House", "Nutrition", "Transportation"]
    var pickerColor: Color = Color.primary
    
   

    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    TextField(
                        "Routine name",
                        text: $routineName
                    ) { isEditing in
                        self.isEditing = isEditing
                    }
                    HStack {
                        Text("Category")
                        Spacer()
                        Picker(
                            selection: $categories,
                            label:
                                HStack {
                                    Text("Category")
                                    Text(categories)
                                }
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .padding(.horizontal)
                                .cornerRadius(10)
                                .shadow(color: Color.white.opacity(0.3), radius: 10, x: 0, y: 10)
                            ,
                            content: {
                                ForEach(categoryOptions, id: \.self) {option in
                                    Text(option)
                                        .tag(option)
                                }
                            })
                            .pickerStyle(MenuPickerStyle())
                    }
                    Toggle(isOn: $toggleIsOn) {
                        Text("Entire day")
                        
                    }
                    
                    DatePicker(selection: .constant(Date()), displayedComponents: DatePickerComponents.hourAndMinute, label: { Text("Start")
                    })
                        .disabled(toggleIsOn)
                        .colorMultiply((!toggleIsOn ? pickerColor: Color.gray.opacity(0.2)))
                    
                    DatePicker(selection: .constant(Date()), displayedComponents: DatePickerComponents.hourAndMinute, label: { Text("End") })
                        .disabled(toggleIsOn)
                        .colorMultiply((!toggleIsOn ? pickerColor: Color.gray.opacity(0.2)))
                    
                    
                    Picker(selection: $repetitionIndex, label: Text("Repetition")) {
                        ForEach(0 ..< repetitions.count) {
                            Text(self.repetitions[$0]).tag($0)
                        }
                    }
                    
                    Section{
                        NavigationLink(destination: transportationRoutineQuestionnaireView()) {
                            Label {
                                Text("Take the questionnaire")
                            } icon: {
                                Image(systemName: "pawprint.fill")
                            }

                        }
                    }
                    
                    Section  {
                        VStack {
                            HStack {
                                Text("Ecoji")
                                    .font(.title2)
                                
                                Spacer()
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image(systemName: "info.circle")
                                }
                            }
                                
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 200, height: 150, alignment: .center)
                                    .padding()
                                    .foregroundColor(Color.secondary.opacity(0.3))
                                Image(systemName: "leaf.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 70))
                            
                            }
                            Text("Add a category to view its associated ecoji")
                                .foregroundColor(.gray)

                        }
            
                                            
                                        }
                                    }
                                    
                                    
                    
                }
 

            .navigationTitle(Text("New Routine"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){presentationMode.wrappedValue.dismiss()}
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done"){print("save function")}
                }
                }
            }
        }
        
    }



struct RoutineView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineView()
    }
}
