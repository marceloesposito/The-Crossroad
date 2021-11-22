//
//  ContentView.swift
//  greenapp
//
//  Created by Marcelo Esposito on 16/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowing: Bool = false
    
    var body: some View {
        let columns: [GridItem] = [
            GridItem(spacing:10),
            GridItem(spacing:10),
        ]
    
        
        NavigationView{
            VStack{
                
                //eco-world
                ZStack{
                    EcoWorld()
                    VStack{
                        HStack(alignment: .top){
                            Spacer()
                            NavigationLink(destination: Text("ciao")) {
                                Image(systemName: "square.and.arrow.up.circle.fill")
                                    .font(.title)
                                    .padding(10)
                                    .padding(.horizontal, 20)
                                    .foregroundColor(Color.gray.opacity(0.7))
                            }
                        }
                        Spacer()
                    }
                }
                
                NavigationLink {
                    Text("ciao")
                } label: {
                    Text("Overall Progress")
                        .foregroundColor(Color.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(20)
                        .padding(.horizontal, 80)
                        .background {
                            Color.yellow
                        }.cornerRadius(18)
                        .shadow(radius: 4, y: 2)
                }.padding(.vertical, 15)
                
                
                
                
                //button opens modal, to change into navigation link
                
                ScrollView(.vertical) {
                    Section {
                        LazyVGrid(columns: columns,spacing: 20, pinnedViews: .sectionHeaders) {
                            routineButton(title: "Transportation", icon: "car.fill", color: Color.red, isShowing: $isShowing)
                            routineButton(title: "House", icon: "house.fill", color: Color.green, isShowing: $isShowing)
                            routineButton(title: "Device", icon: "iphone.homebutton", color: Color.purple, isShowing: $isShowing)
                            routineButton(title: "Nutrition", icon: "leaf.fill", color: Color.teal, isShowing: $isShowing)
                            routineButton(title: "custom 1", icon: "abc", color: .orange, isShowing: $isShowing)
                            
                        }
                        .padding(.horizontal, 10)
                    }
                    
                    
                    
                    
                    // header with button to add routines
                    
                header:{
                    HStack{
                        Text("My Routines")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.leading, 20)
                        Spacer()
                        //plus to change into modal trigger
                        Button {
                            isShowing.toggle()
                        } label: {
                            Image(systemName: "plus")
                                                       .foregroundColor(.accentColor)
                                                       .padding(.trailing,20)
                                                       .font(.title)
                        }

                    
                    }
                    .padding(.bottom, 5)
                }
                }
            }
            
            // navigation bar controls and title
            .navigationTitle("Greenapp")
            .toolbar {
                NavigationLink(destination: Text("ciao")) {
                    Image(systemName: "person.circle.fill").foregroundColor(.accentColor).font(.title)}
            }
        }
        .sheet(isPresented: $isShowing, content: {
            RoutineView()
        })
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
     routine button, to integrate in different file, maibe RoutineView
     
     actually they should all be navigation links
     */
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
                    .previewInterfaceOrientation(.portrait)
                
            }
        }
    }
}

struct EcoWorld: View {
    var body: some View {
        Image(uiImage:#imageLiteral(resourceName: "Eco-world.png"))
            .resizable()
            .scaledToFill()
    }
}
