//
//  SecondBoardScreen.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 23.11.25.
//

import SwiftUI

struct SecondBoardScreen: View {
    var body: some View {
            VStack{
                Image("secondBoardScreen")
                    .resizable()
                    .scaledToFit()
                    
                Group{
                    Text("Navigate the city like a pro")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    Text("Find playgrounds that match your dog’s vibe in seconds.")
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .offset(y: -15)
            }
            .offset(y: -25)
    }
}

#Preview {
    SecondBoardScreen()
   
}
