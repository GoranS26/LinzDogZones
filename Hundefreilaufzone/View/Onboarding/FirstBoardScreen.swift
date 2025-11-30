//
//  FirstBoardScreen.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 23.11.25.
//

import SwiftUI

struct FirstBoardScreen: View {
    var body: some View {
            VStack{
                
                Image("newFirstScreen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 340)
                    .padding(.bottom)
                    Text("Welcome to the Dog Zones \n (Linz edition)")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.center)
                    Text("Easily discover every dog zone in Linz, simple, friendly, and fast.")
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
            }
    }
}

#Preview {
    FirstBoardScreen()
        
}
