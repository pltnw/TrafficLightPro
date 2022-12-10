//
//  ContentView.swift
//  TrafficLightPro
//
//  Created by Екатерина Платонова on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ZStack {
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 200, height: 500)
                    .cornerRadius(30)
                
                
                VStack{
                    Circle()
                        .foregroundColor(.red)
                        .frame(width: 120, height: 120)
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                        .shadow(radius: 10)
                        .padding()
                    
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 120, height: 120)
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                        .shadow(radius: 10)
                        .padding()
                    
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 120, height: 120)
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                        .shadow(radius: 10)
                        .padding()
                
                }
            }
            ZStack{
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 50, height: 200)
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 100, height: 100)
                    .cornerRadius(25)
                
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 75, height: 75)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .shadow(radius: 10)
                
            }
        }
    }
}

func someAction() {
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
