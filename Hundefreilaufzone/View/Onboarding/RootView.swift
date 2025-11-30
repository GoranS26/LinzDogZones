//
//  RootView.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 24.11.25.
//

import SwiftUI

struct RootView: View {
    @Bindable var vm: PlaygroundViewModel

    var body: some View {
        Group {
            if vm.showSplash {
                SplashScreenView(showSplash: $vm.showSplash)
            } else if !vm.isOnboarded {
                OnboardingView(vm: vm)
            } else if vm.isLoading {
                LoadingView(vm: vm)
            } else {
                MainView(vm: vm)
            }
        }
    }
}




#Preview {
    RootView(vm: PlaygroundViewModel())
}
