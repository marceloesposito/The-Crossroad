//
//  PropicModal.swift
//  greenapp
//
//  Created by Marcelo Esposito on 23/11/21.
//

import SwiftUI

struct PropicModal: View {
    
    @State var username: String = ""

    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        let columns: [GridItem] = [
            GridItem(spacing:10),
            GridItem(spacing:10),
            GridItem(spacing:10)
        ]
        
        
        
        
        Form{
            Section {
             TextField("Insert Username", text: $username)
            } header: {
                Text("username")
            }
            Section{
                VStack{
                    HStack {
                        Spacer()
                        Text("Choose your Avatar")
                        Spacer()
                    }
                    LazyVGrid(columns: columns, spacing: 40) {
                        
        // icon 1
                        Button(action: {}) {
                        Image("elefanteTesta")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70.0, height: 70.0)
                            .clipShape(Circle())
                            .overlay( Circle() .stroke(Color.accentColor, lineWidth : 1))}
                        
                        
                        //icon 2
                        
                        Button(action: {}) {
                            Image("volpeTesta")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70.0, height: 70.0)
                                .clipShape(Circle())
                                .overlay( Circle() .stroke(Color.accentColor, lineWidth : 1))
                        }
                        
                        //icon 3
                        
                        Button(action: {}) {
                                Image("ippopotamoTesta")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70.0, height: 70.0)
                                    .clipShape(Circle())
                                    .overlay( Circle() .stroke(Color.accentColor, lineWidth : 1))
                    }
                        
                        //icon 4
                        
                        Button(action: {}) {
                        Image("leoneTesta")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70.0, height: 70.0)
                            .clipShape(Circle())
                            .overlay( Circle() .stroke(Color.accentColor, lineWidth : 1))
                    }
                        
                        //icon 5
                        
                        Button(action: {}) {
                            Image("orsoTesta")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70.0, height: 70.0)
                                .clipShape(Circle())
                                .overlay( Circle() .stroke(Color.accentColor, lineWidth : 1))
                                
                        }
                        
                        //icon 6
                        
                        Button(action: {}) {
                                Image("tigreTesta")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70.0, height: 70.0)
                                    .clipShape(Circle())
                                    .overlay( Circle() .stroke(Color.accentColor, lineWidth : 1))
                            }
                        
      
                    }
                    .padding(.bottom, 30)
                    
                
                }
            } header: {
                Text("User avatar")
            }
            
                HStack{
                    Spacer()
                Button {
                    presentationMode.wrappedValue.dismiss()

                } label: {
                    Text("Submit Selection")
                        .foregroundColor(.white)
                        .padding(30)
                        .padding(.horizontal,60)
                        .background(Color.accentColor)
                        .cornerRadius(18)
                }
Spacer()
                }
            
        }
//        .toolbar {
//            ToolbarItem(placement: .navigationBarTrailing) {
//                Button("Done"){}
//            }
//        }
    }
}

struct PropicModal_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
