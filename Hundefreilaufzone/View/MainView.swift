//
//  MainView.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 19.11.25.
//

import SwiftUI

struct MainView: View {
    @Bindable var vm: PlaygroundViewModel
    
    var body: some View {
            TabView {
                MapView(vm: vm)
                    .tabItem { Label("Map", systemImage: "map") }

                SettingsView(vm: vm)
                    .tabItem { Label("Settings", systemImage: "gear") }
            }
    }
}


#Preview {
    MainView(vm: PlaygroundViewModel())
}
