//
//  HundefreilaufzoneApp.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 18.11.25.
//

import SwiftUI

@main
struct HundefreilaufzoneApp: App {
   
    @State private var vm = PlaygroundViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView(vm: vm)
                .environment(vm)
                .preferredColorScheme(vm.isDarkModeEnabled ? .dark : .light)
        }
    }
}

