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
                            .foregroundColor(.white)
                        Spacer()
                    }
                     
                    Text("Top 1% of EU households have carbon footprints 22 times larger than climate targets allow")
                        .font(.system(.title2, design: .rounded))
                        .fontWeight(.bold)
                        .padding(13)
                        .foregroundColor(Color.white)
                    
                  
                    
                    Text("Scientists aren’t certain exactly how much fossil fuel we can use and still remain below 1.5°C – that is, how big the world’s remaining carbon budget is – but it’s clear the vast majority of EU citizens are using far more than their fair share.")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.semibold)
                        .padding(.horizontal, 40)
                        .foregroundColor(Color.white)
                        
                        
                        
                    
                    
             
                    
                    Text("In the EU, the average carbon footprint is equivalent to about eight tonnes of CO₂ per person, which must fall to about a third of that level over the next decade.But some people place even greater pressure on the environment.")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.semibold)
                        .padding(.horizontal, 40)
                        .foregroundColor(Color.white)
                        .padding(.top, 30)
                  
                    
                    Text("Households in the top 1% of polluters in the EU have carbon footprints that are 22 times larger than the safe limit of 2.5 tonnes. On average, people in this group emit greenhouse gases equivalent to 55 tonnes of CO₂ per person per year.")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.semibold)
                        .padding(.horizontal, 40)
                        .padding(.top, 30)
                        .foregroundColor(Color.white)
                    
                    
                    Spacer()
                                    }.padding(.top,20)
                
                
                
                
//                importanteee
//8=================================D
                
                    .frame(width: 414 ,height: 1080)
                
                
//8=================================D
                
                
                .cornerRadius(20)
                .background {
                    ZStack{
                    Image(uiImage: #imageLiteral (resourceName: "house-exterior.jpg"))
                        .resizable()
                        .scaledToFill()
                        .frame(height: 1080)
                        
                        LinearGradient(gradient:Gradient(colors: [Color.black .opacity(0.7), Color.black.opacity(0.001)]) , startPoint: .top, endPoint: .bottom)
                        
                    }
                }
                .cornerRadius(20)
                
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
}

struct RoutineProgressView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineProgressView(routineName: "My House")
    }
}
