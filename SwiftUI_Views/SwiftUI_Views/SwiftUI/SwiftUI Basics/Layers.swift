//
//  Layers.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 16.02.25.
//

import SwiftUI

struct Layers: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("Layers")
                .font(.largeTitle)
            Text("The Basics")
                .foregroundStyle(.gray)
            Text("With SwiftUI views, you can add layers on top (.overlay) and behind (.background) the view.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
            Image("yosemite")
                .opacity(0.7) // Make image only 70% solid
                .background(Color.red.opacity(0.3)) // Layer behind image
                .background(Color.yellow.opacity(0.3)) // Layer behind red
                .background(Color.blue.opacity(0.3)) // Layer behind yellow
                .overlay(Text("Yosemite")) // Layer on top of image
            
            Image("Layers")
        }
        .font(.title)
    }
}

#Preview {
    Layers()
}
