//
//  PlafondTrafficLightView.swift
//  TrafficLightPro
//
//  Created by Екатерина Платонова on 10.12.2022.
//

import SwiftUI

struct PlafondTrafficLightView: View {
    let color: Color
    var brightness: Double
        
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(brightness)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
            .padding()
    }
}

struct PlafondTrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        PlafondTrafficLightView(color: .green, brightness: 0.5)
    }
}
