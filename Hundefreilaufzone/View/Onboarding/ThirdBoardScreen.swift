//
//  ThirdBoardScreen.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 23.11.25.
//

import SwiftUI

struct ThirdBoardScreen: View {
    var body: some View {
            VStack{
                Image("thirdBoardScreen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 360)
                Group{
                    Text("Find new playzone for you furry friend")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.center)
                    Text("Your dog’s next adventure starts here.")
                    
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .offset(y: 8)
               
            }
            .offset(y: -20)
    }
}

#Preview {
  ThirdBoardScreen()
}

