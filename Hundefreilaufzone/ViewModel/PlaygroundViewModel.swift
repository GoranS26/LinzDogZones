//
//  PlaygroundViewModel.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 18.11.25.
//

import SwiftUI
import MapKit
import Observation

@Observable
@MainActor
class PlaygroundViewModel {

    var playgrounds: [DogPlayground] = []
    var cameraPosition: MapCameraPosition = .automatic
    var selectedPlayground: DogPlayground? = nil
    var isLoading: Bool = true
    private let defaults = UserDefaults.standard
    
    
    var showSplash: Bool {
        didSet{
            defaults.set(showSplash, forKey: "showSplash")
        }
    }
    
    var isOnboarded: Bool {
        didSet{
            defaults.set(isOnboarded, forKey: "isOnboarded")
        }
    }
    
     var isDarkModeEnabled: Bool {
         didSet {
             defaults.set(isDarkModeEnabled, forKey: "isDarkModeEnabled")
         }
     }
     
     var showWaterPlaygrounds: Bool {
         didSet{
             defaults.set(showWaterPlaygrounds, forKey: "showWaterPlaygrounds")
         }
     }
     
     var showFencedPlaygrounds: Bool {
         didSet{
             defaults.set(showFencedPlaygrounds, forKey: "showFencedPlaygrounds")
         }
     }
    

    init() {
        isDarkModeEnabled = defaults.bool(forKey: "isDarkModeEnabled")
        showWaterPlaygrounds = defaults.bool(forKey: "showWaterPlaygrounds")
        showFencedPlaygrounds = defaults.bool(forKey: "showFencedPlaygrounds")
        isOnboarded = defaults.bool(forKey: "isOnboarded")
        if defaults.object(forKey: "showSplash") == nil {
            showSplash = true     
        } else {
            showSplash = defaults.bool(forKey: "showSplash")
        }

        
        Task {
              playgrounds = await loadPlaygrounds()
            
        }
        cameraPosition = .region(
                    MKCoordinateRegion(
                        center: CLLocationCoordinate2D(latitude: 48.30694, longitude: 14.28583), 
                        span: MKCoordinateSpan(latitudeDelta: 0.06, longitudeDelta: 0.06)
                    )
                )
    }
    
    var filteredPlaygrounds: [DogPlayground] {
        playgrounds.filter { p in
        

            // CASE 1: Both OFF → show all
            if !showFencedPlaygrounds && !showWaterPlaygrounds {
                return true
            }

            // CASE 2: Only water ON
            if !showFencedPlaygrounds && showWaterPlaygrounds {
                return p.water && !p.fenced
            }

            // CASE 3: Only fence ON
            if !showWaterPlaygrounds && showFencedPlaygrounds {
                return p.fenced && !p.water
            }

            // CASE 4: Both ON → must satisfy BOTH
            if showFencedPlaygrounds && showWaterPlaygrounds {
                return p.fenced && p.water
            }
            return true
        }
    }



    func loadScreenData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
            self?.isLoading = false
        }
    }

    
    func loadPlaygrounds() async -> [DogPlayground] {
        guard let url = Bundle.main.url(forResource: "dog_playgrounds", withExtension: "json") else {
            print("JSON file not found")
            return []
        }
        do {
            let data = try Data(contentsOf: url)
            let decoding = try  JSONDecoder().decode([DogPlayground].self, from: data)
            return decoding
        } catch {
            print("Error loading JSON: \(error)")
            return []
        }
    }
}
