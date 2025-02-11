//
//  Relationships.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 11.02.25.
//

import SwiftUI

struct Relationships: View {
    var body: some View {
        VStack {
            Text("Parent")
                .font(.largeTitle)
            HStack(spacing: 20) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.orange)
                    .overlay(Text("Child"))
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.orange)
                    .overlay(Text("Child"))
            }
            .font(.largeTitle)
            .padding(24)
            .background(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 10))
            .padding()
        }
        .padding(.vertical, 200)
    }
}

#Preview {
    Relationships()
}
