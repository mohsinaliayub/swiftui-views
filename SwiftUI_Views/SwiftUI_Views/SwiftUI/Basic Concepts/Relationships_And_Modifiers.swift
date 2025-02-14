//
//  Relationships_And_Modifiers.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 11.02.25.
//

import SwiftUI

struct Relationships_And_Modifiers: View {
    var body: some View {
        VStack {
            Text("Parent")
                .font(.system(size: 50))
                .bold()
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .overlay(Text("Child"))
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .overlay(Text("Child"))
        }
        .font(.system(size: 30))
        .padding(24)
        .background(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 10))
        .padding()
        .padding(.vertical, 200)
    }
}

#Preview {
    Relationships_And_Modifiers()
}
