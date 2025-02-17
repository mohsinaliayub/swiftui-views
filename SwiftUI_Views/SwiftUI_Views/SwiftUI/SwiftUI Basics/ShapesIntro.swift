//
//  ShapesIntro.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 17.02.25.
//

import SwiftUI

struct ShapesIntro: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("Shapes")
                .font(.largeTitle)
            
            Text("Short Introduction")
                .foregroundStyle(.gray)
            
            Text("I'll make shapes, give them color and put them behind other views just for decoration.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
            
            Text("This text has a rounded rectangle behind it.")
                .foregroundStyle(.white)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 20) // Create the shape
                        .fill(Color.blue) // Make the shape blue
                }
                .padding()
        }
        .font(.title2)
    }
}

#Preview {
    ShapesIntro()
}
