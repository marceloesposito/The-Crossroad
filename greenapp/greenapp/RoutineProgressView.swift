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
                    Text("Learn More")
                        .font(.title.bold())
                        .padding(.top, 30)
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                }
                
            
               
                      
                    
                VStack(){
                    Text("Top 1% of EU households have carbon footprints 22 times larger than climate targets allow")
                        .font(.system(.title2, design: .rounded))
                        .fontWeight(.bold)
                        .padding(13)
                        .padding(.top, 10)
                        .foregroundColor(Color.white)
                    Spacer()
                        
                    }
                
                
                
//                importanteee
//8=================================D
                
                    .frame(width: 414 ,height: 1080)
                
                
//8=================================D
                
                
                .cornerRadius(20)
                .background {
                    ZStack{
                    Image(uiImage: #imageLiteral (resourceName: "house-learn-more.png.jpg"))
                        .resizable()
                        .scaledToFill()
                        .frame(height: 1080)
                        
                        LinearGradient(gradient:Gradient(colors: [Color.black .opacity(0.7), Color.init(red: 0.46, green: 0.75, blue: 1.69).opacity(0)]) , startPoint: .bottom, endPoint: .top)
                        
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
