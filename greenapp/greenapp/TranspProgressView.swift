//
//  TranspProgressView.swift
//  greenapp
//
//  Created by Maria Trotta on 23/11/21.
//

import SwiftUI

struct TranspProgressView: View {
    var routineName: String
    @State var isShowing: Bool = false
    @State var footprintModalShowing: Bool = false
    var body: some View {
        
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
                        
                        ExtractedView(mainInfo: "50gCO2eq", subInfo: "less emitted",
                                      backgroundColor: Color.green,footprintModalShowing: $footprintModalShowing)
                            .popover(isPresented: $footprintModalShowing) {
                                ZStack{}
                            }
                   
                        ExtractedView(mainInfo: "2400 liters", subInfo: "less wasted water",
                                      backgroundColor: Color.purple,footprintModalShowing: $footprintModalShowing)
                        
                        ExtractedView(mainInfo: "2 trees", subInfo: "needed to offset",
                                      backgroundColor: Color.yellow,footprintModalShowing: $footprintModalShowing)
                            
                          
                    }.padding(.leading,5)
                    
                }
                
                HStack{
                    
                    Text("Did you know?")
                        .font(.title.bold())
                        .padding(.top, 30)
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                }
//limite superiore "did you know" card
                transpInfoCardView()
// limite inferiore "did you know" card
                Spacer()
            }
            .navigationTitle(routineName)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
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

struct TranspProgressView_Previews: PreviewProvider {
    static var previews: some View {
        TranspProgressView(routineName: "Transportation")
    }
}

struct transpInfoCardView: View {
    
    var body: some View {
        VStack {
            
            HStack{
                Text("[Reading time: 20 seconds]")
                    .padding(.leading,50)
                    .padding(.top, 20)
                    .foregroundColor(.black)
                Spacer()
            }
            
            Group {
                Text("Our every single choice can make a difference when we move around the city.")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    
                
            
            
            
            Text("The NACTO I decided to take into account the number of people who actually travel on a given road instead of the more common data on traffic speed. this parameter has allowed us to have a more complete picture of how citizens move within a city.")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.semibold)
                .padding(.horizontal, 40)
                .foregroundColor(Color.black)
                
            
            Text("A study by the National Association of City Transportation Officials (NACTO) explains why it often takes us longer to get to the office or university by car than when we use the bike or the tram.")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.semibold)
                .padding(.horizontal, 40)
                .foregroundColor(Color.black)
                .padding(.top, 30)
            
            }
            Image("auto")
            Group{
            HStack {
                Spacer()
                Text("PRIVATE MOTOR VEHICLES:")
                    .padding(.trailing)
            }
            HStack {
                Spacer()
                Text("600/1,600/HR")
                    .fontWeight(.bold)
                    .padding(.trailing)
            }.padding(.bottom)
            
            Image("bici")
            HStack {
                Spacer()
                Text("TWO-WAY PROTECTED BIKEWAY")
                    .padding(.trailing)
                   
            }
            HStack {
                Spacer()
                Text("7,500/HR")
                    .padding(.trailing)
                    }.padding(.bottom)
            
        Image("bici")
            HStack {
                Spacer()
                Text("TWO-WAY PROTECTED BIKEWAY")
                    .padding(.trailing)

            }
            HStack{
                Spacer()
                Text("7,500/HR")
                    .padding(.trailing)
            }.padding(.bottom)

            }
        
        .padding(.top,20)
        }.frame(width: 414 ,height: 1080)

            .cornerRadius(20)
            .background {
                ZStack{
                    Image(uiImage: #imageLiteral (resourceName: "Bianco.png"))
                        .resizable()
                        .padding(.trailing)
                        .scaledToFill()
                        .frame(height: 1080)
                    
                    LinearGradient(gradient:Gradient(colors: [Color.black .opacity(0.3), Color.black.opacity(0.001)]) , startPoint: .top, endPoint: .bottom)
                    
                }
            }
            .cornerRadius(20)
    }
    
}

