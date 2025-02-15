//
//  Description3.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 15.02.25.
//

import SwiftUI

struct Description3: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            Text("Subtitle")
                .font(.title)
                .foregroundStyle(.gray)
            Text("Short description of what I am demonstrating goes here.")
                .frame(maxWidth: .infinity) // Extend until you can't go anywhere
                .font(.title)
                .foregroundStyle(.white)
                .padding() // Add space all around the text.
                .background(Color.blue)
        }
    }
}

#Preview {
    Description3()
}
