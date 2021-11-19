//
//  RoutineView.swift
//  greenapp
//
//  Created by Marcelo Esposito on 16/11/21.
//

import Foundation
import SwiftUI

struct RoutineView: View {
    
    var titolo: String
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                Text("ciao")
            }.navigationTitle("New Routine")
                .navigationBarTitleDisplayMode(.inline)
        }

    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RoutineView(titolo: "ciao")
.previewInterfaceOrientation(.portrait)
          
        }
    }
}
