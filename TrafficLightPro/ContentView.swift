//
//  ContentView.swift
//  TrafficLightPro
//
//  Created by Екатерина Платонова on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
   
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.4

    
    
    var body: some View {
        VStack(spacing: 0.0) {
            ZStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 200, height: 500)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                
                
                VStack{
                    Circle()
                        .foregroundColor(.red)
                        .opacity(lightIsOff)
                        .frame(width: 120, height: 120)
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                        .shadow(color: .gray, radius: 10)
                        .padding()
                    
                    Circle()
                        .foregroundColor(.yellow)
                        .opacity(lightIsOff)
                        .frame(width: 120, height: 120)
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                        .shadow(radius: 10)
                        .padding()
                    
                    Circle()
                        .foregroundColor(.green)
                        .opacity(lightIsOff)
                        .frame(width: 120, height: 120)
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                        .shadow(radius: 10)
                        .padding()
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
//        switch currentLight {
//        case .red:
//            greenLight.alpha = lightIsOff
//            redLight.alpha = lightIsOn
//            currentLight = .yellow
//        case .yellow:
//            redLight.alpha = lightIsOff
//            yellowLight.alpha = lightIsOn
//            currentLight = .green
//        case .green:
//            yellowLight.alpha = lightIsOff
//            greenLight.alpha = lightIsOn
//            currentLight = .red
//        }
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

