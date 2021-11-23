//
//  ContentView.swift
//  GreenApp
//
//  Created by alessandro borrelli on 19/11/21.
//

import SwiftUI

struct ProfileView: View {
    
    
    var body: some View {
    
        
        VStack {

            //TextField("Insert your name", text: $userName)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Choose your Avatar")
                
                HStack(spacing: 20) {
                    Button(action: {}) {
                    Image("elefanteTesta")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70.0, height: 70.0)
                        .clipShape(Circle())
                    
                        .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                }
                    Button(action: {}) {
                        Image("volpeTesta")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .clipShape(Circle())
                        
                            .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                    }
                    Button(action: {}) {
                            Image("ippopotamoTesta")
                                .resizable()
                                .frame(width: 70.0, height: 70.0)
                                .clipShape(Circle())
                            
                                .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                }
                }
                
                HStack(spacing: 20) {
                    Button(action: {}) {
                    Image("leoneTesta")
                        .resizable()
                        .frame(width: 70.0, height: 70.0)
                        .clipShape(Circle())
                        /*.shadow(radius: 15)*/
                        .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                }
                    Button(action: {}) {
                        Image("orsoTesta")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .clipShape(Circle())
                            /*.shadow(radius: 15)*/
                            .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                            
                    }
                    Button(action: {}) {
                            Image("tigreTesta")
                                .resizable()
                                .frame(width: 70.0, height: 70.0)
                                .clipShape(Circle())
                                /*.shadow(radius: 15)*/
                                .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                        }
                }
                
            }
            .padding(.bottom, 130.0)
    
                
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Done"){}
            }
        }
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}



