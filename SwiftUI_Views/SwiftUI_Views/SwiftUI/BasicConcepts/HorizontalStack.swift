//
//  HorizontalStack.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 11.02.25.
//

import SwiftUI

struct HorizontalStack: View {
    var body: some View {
        HStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 20)
            RoundedRectangle(cornerRadius: 20)
            RoundedRectangle(cornerRadius: 20)
        }
        .foregroundStyle(.orange)
        .padding(24)
        .background(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4))
        .padding()
        .frame(height: 250)
    }
}

#Preview {
    HorizontalStack()
}
