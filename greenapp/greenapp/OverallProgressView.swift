//
//  OverallProgressView.swift
//  greenapp
//
//  Created by Marcelo Esposito on 23/11/21.
//
//
//  OverallProgressView.swift
//  greenapp
//
//  Created by Marcelo Esposito on 19/11/21.
//

import SwiftUI

struct OverallProgressView: View {
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
                    Text("Overall Footprint")
                        .font(.title2)
                        .padding(.leading,20)
                    Spacer()
                }.padding(.top, 30)
                
                
                
                ScrollView(.horizontal){
                    HStack{
                        
                        ExtractedView(mainInfo: "500gCO2eq", subInfo: "less emitted",
                                      backgroundColor: Color.green,footprintModalShowing: $footprintModalShowing)
                            .popover(isPresented: $footprintModalShowing) {
                                ZStack{}
                            }
                   
                        ExtractedView(mainInfo: "10000 liters", subInfo: "less wasted water",
                                      backgroundColor: Color.purple,footprintModalShowing: $footprintModalShowing)
                        
                        ExtractedView(mainInfo: "200 trees", subInfo: "needed to offset",
                                      backgroundColor: Color.yellow,footprintModalShowing: $footprintModalShowing)
                            
                          
                    }.padding(.leading,5)
                    
                }
                
//                HStack{
//
//                    Text("Learn More")
//                        .font(.title.bold())
//                        .padding(.top, 30)
//                        .padding(.leading, 20)
//
//                    Spacer()
//                }
//                    VStack{
//
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 40)
//                                .frame(height: 80)
//                                .cornerRadius(40)
//
//                        }
//
//                        ZStack {
//                            HStack{
//                                Color.green
//                                    .frame(height: 80)
//                                    .cornerRadius(40)
//                            }.padding()
//                        }
//
//                        ZStack {
//                            HStack{
//                                Color.yellow
//                                    .frame(height: 80)
//                                    .cornerRadius(40)
//                            }
//                            .padding()
//                        }
//
//                    }
//
//                
//
//                Spacer()
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


struct OverallProgressView_Previews: PreviewProvider {
    static var previews: some View {
        OverallProgressView(routineName: "OverallProgress")
    }
}
