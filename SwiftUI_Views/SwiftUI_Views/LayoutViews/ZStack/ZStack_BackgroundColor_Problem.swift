//
//  ZStack_BackgroundColor_Problem.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 30.05.25.
//

import SwiftUI

struct ZStack_BackgroundColor_Problem: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack") // This view is under the notch
                    .font(.largeTitle)
                
                Text("Ignores Safe Area Edges")
                    .foregroundStyle(.white)
                
                Text("Having the ZStack edges ignoring the safe area edges might be a mistake.\nYou notice that the top Text View is completely under the notch.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                
                Spacer() // Added a Spacer to push the views up.
            }
            .font(.title)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ZStack_BackgroundColor_Problem()
}
