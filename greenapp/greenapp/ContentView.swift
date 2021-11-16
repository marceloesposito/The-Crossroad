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
            GridItem(),
            GridItem(),
        ]
        NavigationView{
            VStack{
                Image(uiImage:(#imageLiteral(resourceName: "eco_world.png")))
                    .resizable()
                    .scaledToFit()
                HStack{
                    Image(systemName: "triangle.fill")
                        .foregroundColor(.orange)
                        .padding(.horizontal, 30)
                    Text("Learn more!")
                        .font(.title3)
                        .padding(.horizontal,20)
                    Image(systemName: "chevron.right")
                        .padding(.horizontal, 20)
                }
                Divider()
                ScrollView(.vertical) {
                    Section {
                        LazyVGrid(columns: columns,spacing: 30, pinnedViews: .sectionHeaders) {
                            routineButton(title: "Transportation", icon: "car.fill", color: Color.red)
                            routineButton(title: "House", icon: "house.fill", color: Color.green)
                            routineButton(title: "Device", icon: "iphone.homebutton", color: Color.purple)
                            routineButton(title: "Nutrition", icon: "leaf.fill", color: Color.teal)
                            routineButton(title: "custom 1", icon: "abc", color: .orange)

                        }
                        
                        
                    }
                header:{
                    HStack{
                        
                        Text("My Routines")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.leading, 10)
                        Spacer()
                        Image(systemName: "plus")
                            .foregroundColor(.accentColor)
                            .padding(.trailing,10)
                            .font(.title2)
                    }
                    
                }
            }
        }
            
            .navigationTitle("Greenr")
            .toolbar {
                NavigationLink(destination: DestinationView()) {
                    Image(systemName: "person.circle.fill").foregroundColor(.accentColor).font(.title2)}
                
            }
        }
    }
}











struct DestinationView: View{
    var body: some View{
        Text("Hello World")
    }
}









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
                    .font(.headline)
            }.frame(width: 170, height: 100)
                .background(color)
                .cornerRadius(18)
                .foregroundColor(.white)
                .shadow(color: color, radius: 4, y: 2)
        }
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
