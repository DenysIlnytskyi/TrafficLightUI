//
//  ContentView.swift
//  TrafficLightUI
//
//  Created by Денис Ільницький on 11/08/2022.
//

import SwiftUI

enum CurrentLight {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func changeColor() {
        
        let lightIsOn = 1.0
        let ligtIsOf = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redLightState = lightIsOn
            greenLightState = ligtIsOf
        case .yellow:
            currentLight = .green
            redLightState = ligtIsOf
            yellowLightState = lightIsOn
        case .green:
            currentLight = .red
            greenLightState = lightIsOn
            yellowLightState = ligtIsOf
        }
    }
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                ColorLight(color: .red, opacity: redLightState)
                ColorLight(color: .yellow, opacity: yellowLightState)
                ColorLight(color: .green, opacity: greenLightState)
                
                Spacer()
                
                ChangeColorButton(tittle: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeColor()
                }
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
