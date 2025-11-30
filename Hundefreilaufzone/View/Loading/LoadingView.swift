//
//  LoadingView.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 25.11.25.
//

import SwiftUI
import MapKit

struct LoadingView: View {
    @State private var animate = false
    @Bindable  var vm: PlaygroundViewModel

    var body: some View {
        ZStack {
            Map(position: $vm.cameraPosition)
                            .allowsHitTesting(false)
                            .blur(radius: 10)
                            .opacity(0.9)
                            .scaleEffect(1.03)
                            .ignoresSafeArea()

            VStack(spacing: 24) {

               
                Image("dogPin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .shadow(radius: 4)
                    .opacity(animate ? 1 : 0.2)
                    .scaleEffect(animate ? 1.05 : 0.90)
                    .animation(
                        .easeInOut(duration: 0.8).repeatForever(autoreverses: true),
                        value: animate
                    )

                
                Text("Loading playgrounds…")
                    .font(.headline)
                    .foregroundColor(.primary)
                    .opacity(0.9)

                
                HStack(spacing: 8) {
                    ForEach(0..<3) { i in
                        Circle()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.primary.opacity(0.8))
                            .scaleEffect(animate ? 1 : 0.3)
                            .animation(
                                .easeInOut(duration: 0.6)
                                    .repeatForever(autoreverses: true)
                                    .delay(0.2 * Double(i)),
                                value: animate
                            )
                    }
                }
            }
        }
        .onAppear {
            animate = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                vm.isLoading = false
            }
        )}
    }
}


#Preview {
    LoadingView(vm: PlaygroundViewModel())
}

