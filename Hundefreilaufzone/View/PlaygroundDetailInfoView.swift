//
//  PlaygroundDetailInfoView.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 28.11.25.
//

import SwiftUI

struct PlaygroundDetailInfoView: View {
    
    @State  var infoIcon: String
    @State  var iconSize: CGFloat
    @State  var infoTitle: String
    @State  var color: Color
    @State  var value: String
 
    
    var body: some View {
        HStack {
            Image(systemName: infoIcon)
                .foregroundStyle(color)
                .font(.system(size: iconSize))
            Text(infoTitle)
                .foregroundStyle(.secondary)
            Spacer()
            Text(value)
                .foregroundStyle(.primary)
        }
        .font(.system(size: 18, weight: .regular, design: .rounded))
    }
}

#Preview {
    PlaygroundDetailInfoView(infoIcon: "xmark.circle", iconSize: 20, infoTitle: "Fenced", color: .brown, value: "Yes")
}
