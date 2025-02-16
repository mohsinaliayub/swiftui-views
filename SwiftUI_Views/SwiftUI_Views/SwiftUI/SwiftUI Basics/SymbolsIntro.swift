//
//  SymbolsIntro.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 16.02.25.
//

import SwiftUI

struct SymbolsIntro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Images")
                .font(.largeTitle)
            Text("Using SF Symbols")
                .foregroundStyle(.gray)
            Text("You will see I use icons or symbols to add clarity to what I'm demonstrating. These come from Apple's new symbol font library which you can browse using an app called 'SF Symbols")
                .font(.body)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
            // Use systemName when you want to use SF Symbols
            Image(systemName: "hand.thumbsup.fill")
                .font(.largeTitle) // Control the size of the SF Symbol with font modifier
            Image("SF Symbols")
        }
        .font(.title)
    }
}

#Preview {
    SymbolsIntro()
}
