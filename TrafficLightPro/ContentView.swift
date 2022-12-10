//
//  ContentView.swift
//  TrafficLightPro
//
//  Created by Екатерина Платонова on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
   
    @State private var currentLight = CurrentLight.red
    @State private var lightIsOn = 1.0
    @State private var lightIsOff = 0.4
    
    @State var redLight = PlafondTrafficLightView(color: .red, brightness: 0.4)
    @State var yellowLight = PlafondTrafficLightView(color: .yellow, brightness: 0.4)
    @State var greenLight = PlafondTrafficLightView(color: .green, brightness: 0.4)
    
    var body: some View {
        VStack(spacing: 0.0) {
            ZStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 200, height: 500)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                
                VStack{
                    redLight
                    yellowLight
                    greenLight
                }
            }
            
            ZStack{
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 50, height: 220)
                    .shadow(radius: 10)
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 100, height: 100)
                    .cornerRadius(25)
                    .shadow(radius: 10)
                
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 75, height: 75)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .shadow(radius: 10)
                
                Button(action: someAction) {
                    Text("START")
                        .font(.title3).bold()
                        .foregroundColor(.white)
                }
            }
        }
    }
    
    func someAction() {
        switch currentLight {
        case .red:
            greenLight.brightness = lightIsOff
            redLight.brightness = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.brightness = lightIsOff
            yellowLight.brightness = lightIsOn
            currentLight = .green
        case .green:
            yellowLight.brightness = lightIsOff
            greenLight.brightness = lightIsOn
            currentLight = .red
        }
    }
}
    
    extension ContentView {
        private enum CurrentLight {
            case red, yellow, green
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

