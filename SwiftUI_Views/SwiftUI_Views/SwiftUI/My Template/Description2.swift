//
//  Description2.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 15.02.25.
//

import SwiftUI

struct Description2: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            Text("Subtitle")
                .font(.title)
                .foregroundStyle(.gray)
            Text("Short description of what I am demonstrating goes here.")
                .frame(maxWidth: .infinity) // Extend until you can't go anymore
                .font(.title)
                .foregroundStyle(.white)
                .background(Color.blue)
        }
    }
}

#Preview {
    Description2()
}
