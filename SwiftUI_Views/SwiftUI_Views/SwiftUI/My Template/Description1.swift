//
//  Description1.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 14.02.25.
//

import SwiftUI

struct Description1: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            Text("Subtitle")
                .font(.title)
                .foregroundStyle(.gray)
            Text("Short description of what I am demonstrating goes here.")
                .font(.title)
                .foregroundStyle(.white)
                .background(Color.blue) // Add the color behind the text.
        }
    }
}

#Preview {
    Description1()
}
