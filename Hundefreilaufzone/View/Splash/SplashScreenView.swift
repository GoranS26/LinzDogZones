//
//  SplasScreenView.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 25.11.25.
//

import SwiftUI

struct SplashScreenView: View {
    
    @Binding var showSplash: Bool

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack {
                Image("introText")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400)
                    .shadow(radius: 10)

                Image("dogPin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .offset(y: -80)

                Button("GET STARTED") {
                    withAnimation {
                        showSplash = false
                    }
                   
                }
                .foregroundStyle(.white)
                .bold()
                .frame(width: 250, height: 50)
                .glassEffect(.clear)
                .clipShape(Capsule())
                .offset(y: -95)
            }
            .padding(.bottom)
        }
    }
}


#Preview {
    SplashScreenView(showSplash: .constant(true))
}

