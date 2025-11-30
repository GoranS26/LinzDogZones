//
//  Starterview.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 24.11.25.
//

import SwiftUI

struct OnboardingView: View {
    @Bindable  var vm: PlaygroundViewModel
    @State private var index = 0

    var body: some View {
        VStack {
            TabView(selection: $index) {
                FirstBoardScreen()
                    .tag(0)
                SecondBoardScreen()
                    .tag(1)
                ThirdBoardScreen()
                    .tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Button {
                if index < 2 {
                    withAnimation {
                        index += 1
                    }
                } else {
                    withAnimation {
                        vm.isLoading = true
                        vm.isOnboarded = true 
                    }
                }
            } label: {
                Text(index == 2 ? "Get Started" : "Next")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(14)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 60)
            }
        }
        .ignoresSafeArea()
    }
}



#Preview {
    OnboardingView(vm: PlaygroundViewModel())
}

