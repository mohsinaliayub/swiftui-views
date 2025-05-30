//
//  ZStack_Aligning.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 30.05.25.
//

import SwiftUI

struct ZStack_Aligning: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("ZStack",
                       subtitle: "Aligning",
                       desc: "The ZStack allows you to align all the views within it.",
                       back: .green, textColor: .white)
            
            ZStack(alignment: .topLeading) {
                Image("yosemite_large")
                    .resizable() // Allows image to change size
                    .scaledToFit() // Keeps image the same aspect ratio when resizing
                
                Rectangle()
                    .fill(.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 50)
                
                Text("Yosemite National Park")
                    .font(.title)
                    .padding()
            }
            
            ZStack(alignment: .bottomTrailing) {
                Image("yosemite_large")
                    .resizable()
                    .scaledToFit()
                
                Rectangle()
                    .fill(.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 50)
                
                Text("Yosemite National Park")
                    .font(.title)
                    .padding()
            }
        }
    }
}

#Preview {
    ZStack_Aligning()
}
