//
//  FootprintAlertView.swift
//  greenapp
//
//  Created by Marcelo Esposito on 22/11/21.
//

import SwiftUI

struct FootprintAlertView: View {
    
    
    @Binding var footprintModalShowing: Bool
    
    
    var body: some View {

        ZStack{
            Color.blue.opacity(0.01)
                .background(.regularMaterial)
                .ignoresSafeArea()
                .onTapGesture {
                    footprintModalShowing = false
                    print(footprintModalShowing)
                }
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 370, height: 600, alignment: .center)
                .foregroundColor(.white)
        
        }
        
    }
}

struct FootprintAlertView_Previews: PreviewProvider {
    static var previews: some View {
       RoutineProgressView(routineName: "My House")
    }
}
