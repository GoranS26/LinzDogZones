//
//  DogPlayground.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 18.11.25.
//

import Foundation

struct DogPlayground: Identifiable, Codable, Hashable, Equatable {
    
    let id: String
    let name: String
    let city: String
    let latitude: Double
    let longitude: Double
    let official: Bool
    let fenced: Bool
    let water: Bool
    let size: String
    let surface: String
    let parking: String
    let imageUrl: String?
    let description: String
    
}
