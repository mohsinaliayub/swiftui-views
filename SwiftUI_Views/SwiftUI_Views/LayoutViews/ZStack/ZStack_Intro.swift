//
//  ZStack_Intro.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 30.05.25.
//

import SwiftUI

struct ZStack_Intro: View {
    var body: some View {
        ZStack {
            // LAYER 1: Further back
            Color.gray // Yes, Color is a View!
            
            // LAYER 2: This VStack is on top.
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Introduction")
                    .foregroundStyle(.white)
                
                Text("ZStacks are great for setting a background color.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                
                Text("But notice the Color stops at the Safe Areas edges (white areas on top and bottom).")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
            }
            .font(.title)
        }
    }
}

#Preview {
    ZStack_Intro()
}
