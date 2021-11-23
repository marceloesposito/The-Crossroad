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
                    OverallProgressView(routineName: "Overall Progress")
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
                }.padding(.vertical, 10)
                
                Divider()
                
                
                //button opens modal, to change into navigation link
                
                ScrollView(.vertical) {
                    Section {
                        LazyVGrid(columns: columns,spacing: 20, pinnedViews: .sectionHeaders) {
                            TransportationRoutineButton(title: "Transportation", icon: "car.fill", color: Color.red, isShowing: $isShowing)
                            HouseRoutineButton(title: "House", icon: "house.fill", color: Color.green, isShowing: $isShowing)
                            HouseRoutineButton(title: "Device", icon: "iphone.homebutton", color: Color.purple, isShowing: $isShowing)
                            TransportationRoutineButton(title: "Nutrition", icon: "leaf.fill", color: Color.teal, isShowing: $isShowing)
                            addRoutineButton(title: "Add Routine", icon: "plus.circle.fill", color: .orange, isShowing: $isShowing)
                            
                        }
                        .padding(.horizontal, 10)
                    }
                    
                    
                    
                    
                    // header with button to add routines
                    
                header:{
                    HStack{
                        Image(systemName: "list.bullet.rectangle.portrait")
                            .padding(.leading, 20)
                            .font(.title2)

                        Text("My Routines")
                            .font(.title2)
                            .fontWeight(.semibold)
                            
                        Spacer()
                    
                    }
                    .padding(.bottom, 5)
                }
                }
            }
            
            // navigation bar controls and title
            .navigationTitle("Greenapp")
            .toolbar {
                NavigationLink(destination:ProfileView()) {
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
