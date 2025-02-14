//
//  Subtitle.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 14.02.25.
//

import SwiftUI

struct Subtitle: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            
            Text("Subtitle")
                .font(.title) // Set to the second largest font.
                .foregroundStyle(.gray) // Change text color to gray.
        }
    }
}

#Preview {
    Subtitle()
}
