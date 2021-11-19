//
//  InfographicView.swift
//  greenapp
//
//  Created by Nuwan Dilshan Leitan on 19/11/21.
//

import SwiftUI

struct InfographicView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical){
                VStack(alignment: .leading) {
                    
                    Text("Reading time: 40 seconds")
                        .padding(.top, 70)
                        .padding(.leading)
                        .foregroundColor(Color.white)
                    
                    Text("How is climate change affecting oceanic biomes")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .frame(width: 300)
                        .padding()
                    
                    
                    Text("Covering about 70 percent of the Earth’s surface, the world’s oceans have a two-way relationship with weather and climate. The oceans influence the weather on local to global scales, while changes in climate can fundamentally alter many properties of the oceans")
                  
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding()
                    
                    Image("horizontal")
                        .resizable()
                        .cornerRadius(25)
                        .scaledToFit()
                        .frame(height: 200)
                        .padding(.leading,65)
                    
                    Text("Although the oceans help reduce climate change by storing large amounts of carbon dioxide, increasing levels of dissolved carbon are changing the chemistry of seawater and making it more acidic. Increased ocean acidity makes it more difficult for certain organisms, such as corals and shellfish, to build their skeletons and shells. These effects, in turn, could substantially alter the biodiversity and productivity of ocean ecosystems.")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding()
                    
                }
                .background(
                    ZStack {
                        Image("vertical")
                            .resizable()
                            .padding(.top, 30)
                            .scaleEffect(1.1)
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height)
                    
                        Rectangle()
                            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height)
                        .foregroundColor(Color.blue.opacity(0.2))
                        .padding(.top, 30)
                        .scaleEffect(1.065)
                        
                })
                .edgesIgnoringSafeArea(.bottom)
                
            }

            .navigationTitle("Oceanic Acidity")
        }
    }
}

struct InfographicView_Previews: PreviewProvider {
    static var previews: some View {
        InfographicView()
    }
}
