//
//  EcojiView.swift
//  greenapp
//
//  Created by Nuwan Dilshan Leitan on 19/11/21.
//

import SwiftUI

struct EcojiView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            
            Text("Ecoji")
                .font(.body)
                .fontWeight(.regular)
            // Horizontally Image
            HStack {
                Spacer()
                Image("Go Green - Solar Powered Home")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 250)
                    .shadow(radius: 10)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(15)
                    .padding()
                Spacer()
            }
            // Title
            Text("Solar House")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            // Body
            Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullamco laboriosam, nisi ut aliquid ex ea commodi consequatur.")
        }
        .padding()
    }
}
struct EcojiView_Previews: PreviewProvider {
    static var previews: some View {
        EcojiView()
    }
}

