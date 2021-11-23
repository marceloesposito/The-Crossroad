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
                infoCardView()
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

struct RoutineProgressView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineProgressView(routineName: "My House")
    }
}

struct ExtractedView: View {
    var mainInfo: String
    var subInfo: String
    var backgroundColor: Color
    @Binding var footprintModalShowing: Bool
    var body: some View {
        Button {
            footprintModalShowing.toggle()
        } label: {
            VStack{
                Text(mainInfo)
                    .font(.system(.title2, design: .rounded))
                
                
                Text(subInfo)
                    .font(.system(.headline, design: .rounded))
            }.padding()
                .padding(.vertical)
                .foregroundColor(Color.white)
                .background(backgroundColor)
                .cornerRadius(18)
                .padding(5)
                .shadow(color: backgroundColor, radius: 4, y: 2)
        }
    }
}

struct infoCardView: View {
     
    var readingTime: String = "[Reading time: 20 seconds]"
    
    var paragraphOne: String = "Top 1% of EU households have carbon footprints 22 times larger than climate targets allow"
    
    var paragraphTwo: String = "Scientists aren’t certain exactly how much fossil fuel we can use and still remain below 1.5°C – that is, how big the world’s remaining carbon budget is – but it’s clear the vast majority of EU citizens are using far more than their fair share."
    
    var paragraphThree: String = "In the EU, the average carbon footprint is equivalent to about eight tonnes of CO₂ per person, which must fall to about a third of that level over the next decade.But some people place even greater pressure on the environment."
    
    var paragraphFour: String = "Households in the top 1% of polluters in the EU have carbon footprints that are 22 times larger than the safe limit of 2.5 tonnes. On average, people in this group emit greenhouse gases equivalent to 55 tonnes of CO₂ per person per year."
    
    var backgroundImage: String = "house-exterior.jpg"
    
    var body: some View {
        VStack{
            
            HStack {
                Text(readingTime)
                    .padding(.leading,50)
                    .padding(.top, 20)
                    .foregroundColor(.white)
                Spacer()
            }
            
            Text(paragraphOne)
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .padding(13)
                .foregroundColor(Color.white)
            
            
            
            Text(paragraphTwo)
                .font(.system(.title3, design: .rounded))
                .fontWeight(.semibold)
                .padding(.horizontal, 40)
                .foregroundColor(Color.white)
            
            
            
            
            
            
            
            Text(paragraphThree)
                .font(.system(.title3, design: .rounded))
                .fontWeight(.semibold)
                .padding(.horizontal, 40)
                .foregroundColor(Color.white)
                .padding(.top, 30)
            
            
            Text(paragraphFour)
                .font(.system(.title3, design: .rounded))
                .fontWeight(.semibold)
                .padding(.horizontal, 40)
                .padding(.top, 30)
                .foregroundColor(Color.white)
            
            
            Spacer()
        }.padding(.top,20)
        
        
        
        
        //                importanteee
        //                   =================================
        
            .frame(width: 414 ,height: 1080)
        
        
        //                   =================================
        
        
        
        
            .cornerRadius(20)
            .background {
                ZStack{
                    Image(uiImage: #imageLiteral (resourceName: backgroundImage))
                        .resizable()
                        .scaledToFill()
                        .frame(height: 1080)
                    
                    LinearGradient(gradient:Gradient(colors: [Color.black .opacity(0.7), Color.black.opacity(0.001)]) , startPoint: .top, endPoint: .bottom)
                    
                }
            }
            .cornerRadius(20)
    }
}
