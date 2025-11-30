//
//  PlaygroundDetailView.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 18.11.25.
//

import SwiftUI

struct PlaygroundDetailView: View {
    
    let model: DogPlayground
    
    var body: some View {
 
            VStack{
                Image("sheetImage")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 4, y: 1)
                
                // TITLE
                VStack(spacing: 6) {
                    Text(model.name)
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.center)
                    // CITY NAME
                    Text(model.city)
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundStyle(.secondary)
                }
                .padding(.bottom, 20)
                
                // INFO ROWS
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(maxWidth: .infinity)
                        .frame(height: 245)
                        .foregroundStyle(.secondary.opacity(0.1))
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 4, y: 1)
                        
                    VStack(spacing: 12){
                        PlaygroundDetailInfoView(infoIcon: "pedestrian.gate.closed", iconSize: 20, infoTitle: "Fenced", color: .brown, value: model.fenced ? "Yes" : "No")
                        
                        PlaygroundDetailInfoView(infoIcon: "drop.circle.fill", iconSize: 25, infoTitle: "Water", color: .blue, value: model.water ? "Available" : "Not Available")
                        
                        PlaygroundDetailInfoView(infoIcon: "mountain.2.circle.fill", iconSize: 25, infoTitle: "Surface", color: .green, value: model.surface.capitalized)
                        
                        PlaygroundDetailInfoView(infoIcon: "sportscourt.fill", iconSize: 20, infoTitle: "Size", color: .orange, value: model.size)
                        
                        
                        PlaygroundDetailInfoView(infoIcon: "car.fill", iconSize: 20, infoTitle: "Parking", color: .red, value: model.parking)
                        
                        
                        PlaygroundDetailInfoView(infoIcon: "info.circle.fill", iconSize: 25, infoTitle: "Offical", color: .primary, value: model.official ? "Yes" : "No")
                    }
                    .padding()
                    
                }

                // DESCRIPTION
                Text(model.description)
                    .font(.system(size: 18, weight: .regular, design: .rounded))
                    .frame(maxWidth: .infinity)
                    .padding(.top)
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
            }
            .padding()
            .padding(.bottom, 16)
           
            
        
        
    }
}

#Preview {
    PlaygroundDetailView(
        model: DogPlayground(
            id: "leonding_leonding",
            name: "Hundewiese Leonding",
            city: "Leonding",
            latitude: 48.270664883002745,
            longitude: 14.257464652003119,
            official: true,
            fenced: true,
            water: false,
            size: "Small",
            surface: "Grass",
            parking: "Street parking",
            imageUrl: nil,
            description: "Closed off-leash grassy field by the road."
        )
    )
}


