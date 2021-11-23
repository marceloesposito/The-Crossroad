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
            HStack {
                
               
               

                
                
                VStack {
                    Button(action: {}) {
                        /*@START_MENU_TOKEN@*/Text("Done")
                            .foregroundColor(Color.green)
                            .multilineTextAlignment(.leading)
                            .padding([.leading, .bottom], 150.0)
                        /*@END_MENU_TOKEN@*/
                    }
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                }
                
                /*.padding([.bottom, .trailing], 100.0)*/
            }
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            
            
            
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Choose your Avatar")
                
                HStack(spacing: 20) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("elefanteTesta")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70.0, height: 70.0)
                        .clipShape(Circle())
                        /*.shadow(radius: 15)*/
                        .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("volpeTesta")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .clipShape(Circle())
                            /*.shadow(radius: 15)*/
                            .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                    }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image("ippopotamoTesta")
                                .resizable()
                                .frame(width: 70.0, height: 70.0)
                                .clipShape(Circle())
                                /*.shadow(radius: 15)*/
                                .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                }
                }
                
                HStack(spacing: 20) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("leoneTesta")
                        .resizable()
                        .frame(width: 70.0, height: 70.0)
                        .clipShape(Circle())
                        /*.shadow(radius: 15)*/
                        .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("orsoTesta")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .clipShape(Circle())
                            /*.shadow(radius: 15)*/
                            .overlay( Circle() .stroke(Color .red, lineWidth : 1))
                            .labelStyle(/*@START_MENU_TOKEN@*/DefaultLabelStyle()/*@END_MENU_TOKEN@*/)
                    }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}



