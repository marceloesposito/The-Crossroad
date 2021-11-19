//
//  RoutineProgressView.swift
//  greenapp
//
//  Created by Marcelo Esposito on 19/11/21.
//

import SwiftUI

struct RoutineProgressView: View {
    
    var routineName: String
    @State var isShowing: Bool = false
    @State var footprintModalShowing: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                
                
                
                Image(uiImage: #imageLiteral(resourceName: "Chart.png"))
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Text("Footprint")
                        .font(.title2)
                        .padding(.leading,20)
                    Spacer()
                }
                
                
                
                ScrollView(.horizontal){
                    HStack{
                        
                        Button {
                            footprintModalShowing.toggle()
                        } label: {
                            VStack{
                                Text("50gCO2eq")
                                    .font(.system(.title2, design: .rounded))
                                
                                
                                Text("less emitted")
                                    .font(.system(.headline, design: .rounded))
                            }.padding()
                                .padding(.vertical)
                                .foregroundColor(Color.white)
                                .background(Color.green)
                                .cornerRadius(18)
                                .padding()
                            
                        }
                        .shadow(color: .green, radius: 4, y: 2)
                        
                        
                        
                        Button {
                            footprintModalShowing.toggle()
                        } label: {
                            VStack{
                                Text("2400 liters")
                                    .font(.system(.title2, design: .rounded))
                                
                                
                                Text("less wasted water")
                                    .font(.system(.headline, design: .rounded))
                            }.padding()
                                .padding(.vertical)
                                .foregroundColor(Color.white)
                                .background(Color.purple)
                                .cornerRadius(18)
                            
                        }
                        .shadow(color: .purple, radius: 4, y: 2)
                        
                        
                        Button {
                            footprintModalShowing.toggle()
                        } label: {
                            VStack{
                                Text("2 trees")
                                    .font(.system(.title2, design: .rounded))
                                
                                
                                Text("saved")
                                    .font(.system(.headline, design: .rounded))
                            }.padding()
                                .padding(.vertical)
                                .foregroundColor(Color.white)
                                .background(Color.yellow)
                                .cornerRadius(18)
                                .padding()
                            
                        }
                        .shadow(color: .yellow, radius: 4, y: 2)
                    }
                    
                }
                Spacer()
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle(routineName)
            .toolbar {
                Button {
                    isShowing.toggle()
                    print(isShowing)
                } label: {
                    Text("Edit Routine")
                }
                
            }
        }
        
    }
}

struct RoutineProgressView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineProgressView(routineName: "House routine")
    }
}
