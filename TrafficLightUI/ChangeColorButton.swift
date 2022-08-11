//
//  ChangeColorButton.swift
//  TrafficLightUI
//
//  Created by Денис Ільницький on 11/08/2022.
//

import SwiftUI

struct ChangeColorButton: View {
    
    let tittle: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(tittle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}
struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(tittle: "START", action: {})
    }
}
