//
//  VStack_Nesting.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 18.05.25.
//

import SwiftUI

struct VStack_Nesting: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("VStack",
                       subtitle: "Nesting",
                       desc: "A VStack can be nested within another VStack when laying out views.",
                       back: .blue, textColor: .white)
            
            VStack {
                Text("VStack inside another VStack")
                Divider()
                Text("This can be helpful. Why?")
                Divider()
                Text("More than 10 views creates an error.")
                Divider()
                Text("Starting iOS 17, you can add more than 10 views inside a VStack.")
            }
            .padding()
            .foregroundStyle(Color.white)
            .background(
                // Use a blue rectangle as the background
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.blue))
            .padding()
        }
        .font(.title)
    }
}

#Preview {
    VStack_Nesting()
}
