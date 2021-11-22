//
//  RoutineTransportation.swift
//  greenapp
//
//  Created by Maria Trotta on 22/11/21.
//

import SwiftUI

struct RoutineTransportation: View {
    
    var routineTransp: String
    @State var transpIsShowing: Bool = false
    @State var footprintTranspModalShowing: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
            VStack{
                
                
//                Divider()
                Image(uiImage: #imageLiteral(resourceName: "Chart.png"))
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 40)
                
                
//                Image(uiImage:#imageLiteral(resourceName:"3-dots.png"))
                
                
                
                HStack {
                    Text("Footprint")
                        .font(.title2)
                        .padding(.leading,20)
                    Spacer()
                }.padding(.top, 30)
                
                
                
                ScrollView(.horizontal){
                    HStack{
                        
                        Button {
                            footprintTranspModalShowing.toggle()
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
                            footprintTranspModalShowing.toggle()
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
                            footprintTranspModalShowing.toggle()
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
                
                HStack{
                    Text("Did you know?")
                        .font(.title.bold())
                        .padding(.top, 30)
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                }
                
            
               
                      
                    
                VStack(){
                    
                    HStack {
                        Text("[Reading time: 20 seconds]")
                            .padding(.leading,50)
                            .padding(.top, 20)
                            .foregroundColor(.black)
                        Spacer()
                    }
                     
                    Text("Our every choice can make a difference when we move around the city")
                        .font(.system(.title2, design: .rounded))
                        .fontWeight(.bold)
                        .padding(13)
                        .foregroundColor(Color.black)
                    
                  
                    
                    Text("A National Association of City Transportation Officials (NACTO) study took into account the number of people actually moving on a given road instead of the more common traffic speed figure. This parameter has allowed us to have a more complete picture of how citizens move within a city:")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.semibold)
                        .padding(.horizontal, 40)
                        .foregroundColor(Color.black)
                        
                    
                    Image(uiImage: #imageLiteral(resourceName: "auto.png"))
                    
                    Text("600/ 1,600 People per hour")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.trailing)
                        .padding(.top, -6.0)
                        
                    
                    
                    
                        
                    
                        
                    
                    
             
                    
                    
                    
                    Spacer()
                                    }.padding(.top,20)
                
                
                
                
//                importanteee
//8=================================D
                
                    .frame(width: 414 ,height: 1080)
                
                
//8=================================D
                
                
                .cornerRadius(20)
                .background {
                    ZStack{
                    Image(uiImage: #imageLiteral (resourceName: "Bianco.jpg"))
                        .resizable()
                        .scaledToFill()
                        .frame(height: 1080)
                        
                     //   LinearGradient(gradient:Gradient(colors: [Color.black .opacity(0.4), Color.black.opacity(0.2)]) , startPoint: .top, endPoint: .bottom)
                        
                    }
                }
                .cornerRadius(20)
                
                Spacer()
            }
            
            .navigationTitle(routineTransp)
            .toolbar {
                Button {
                    transpIsShowing.toggle()
                    print(transpIsShowing)
                } label: {
                    Text("Edit Routine")
                }
                
            }
        }
        }
    }
}

struct RoutineTransportation_Previews: PreviewProvider {
    static var previews: some View {
        RoutineTransportation(routineTransp: "Transportation")
    }

}
