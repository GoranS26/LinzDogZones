//
//  MapView.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 18.11.25.
//


import SwiftUI
import MapKit

struct MapView: View {
    
    @Bindable var vm: PlaygroundViewModel
    @State private var visiblePins: Set<String> = []


    var body: some View {
        ZStack {
            Map(position: $vm.cameraPosition) {
                ForEach(vm.filteredPlaygrounds) { place in
                    Annotation(place.name,
                               coordinate: CLLocationCoordinate2D(latitude: place.latitude,
                                                                  longitude: place.longitude)) {
                        
                        let isVisible = visiblePins.contains(place.id)

                        Image("dogPin")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 65, height: 65)
                            .scaleEffect(isVisible ? 1 : 0.2)
                            .opacity(isVisible ? 1 : 0)
                            .animation(
                                .spring(response: 0.55, dampingFraction: 0.7),
                                value: isVisible
                            )
                            .onTapGesture {
                                vm.selectedPlayground = place
                            }
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 0.1...0.9)) {
                                    visiblePins.insert(place.id)
                                }
                            }
                    }
                }
            }
            .mapControls {
                MapCompass()
                MapPitchToggle()
            }
            .mapStyle(.standard(elevation: .realistic))
            .sheet(item: $vm.selectedPlayground) { place in
                PlaygroundDetailView(model: place)
            }
        }
        
        
    }
}


#Preview {
    MapView(vm: PlaygroundViewModel())
        
}

