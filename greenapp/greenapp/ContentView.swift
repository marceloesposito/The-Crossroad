//
//  ContentView.swift
//  greenapp
//
//  Created by Marcelo Esposito on 16/11/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        let columns: [GridItem] = [
            GridItem(spacing:10),
            GridItem(spacing:10),
        ]
        
        
        
        
        NavigationView{
            VStack{
                
                //eco-world
                
                Image(uiImage:(#imageLiteral(resourceName: "eco_world.png")))
                    .resizable()
                    .scaledToFit()
                
                
                NavigationLink {
                    Text("ciao")
                } label: {
                    Text("Click to see overall progress")
                        .foregroundColor(Color.white)
                        .cornerRadius(100)
                        .background {
                            LinearGradient(colors: [.cyan,.green,.yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                        }
                        .shadow(radius: 4, y: 2)
                }
                
                Divider()
                
                
                ScrollView(.vertical) {
                    Section {
                        LazyVGrid(columns: columns,spacing: 20, pinnedViews: .sectionHeaders) {
                            routineButton(title: "Transportation", icon: "car.fill", color: Color.red)
                            routineButton(title: "House", icon: "house.fill", color: Color.green)
                            routineButton(title: "Device", icon: "iphone.homebutton", color: Color.purple)
                            routineButton(title: "Nutrition", icon: "leaf.fill", color: Color.teal)
                            routineButton(title: "custom 1", icon: "abc", color: .orange)
                            
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
                        Image(systemName: "plus")
                            .foregroundColor(.accentColor)
                            .padding(.trailing,20)
                            .font(.title)
                    }
                }
                }
            }
            
            // navigation bar controls and title
            .navigationTitle("Greenr")
            .toolbar {
                NavigationLink(destination: Text("ciao")) {
                    Image(systemName: "person.circle.fill").foregroundColor(.accentColor).font(.title)}
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
     routine button, to integrate in different file, maibe RoutineView
     
     actually they should all be navigation links
     */
    
    
    struct routineButton: View {
        var title: String
        var icon: String
        var color: Color
        
        var body: some View {
            Button {
                print("button pressed")
            } label: {
                VStack{
                    Image(systemName:icon)
                        .font(.title)
                        .padding(3)
                    Text(title)
                        .font(.title2)
                }.frame(width: 180, height: 120)
                    .background(color)
                    .cornerRadius(18)
                    .foregroundColor(.white)
                    .shadow(color: color, radius: 4, y: 2)
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
                //            ContentView()
                //                .preferredColorScheme(.dark)
                //                .previewInterfaceOrientation(.portrait)
            }
        }
    }
}
