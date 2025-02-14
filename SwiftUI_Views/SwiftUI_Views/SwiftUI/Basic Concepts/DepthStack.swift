//
//  DepthStack.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 11.02.25.
//

import SwiftUI

struct DepthStack: View {
    var body: some View {
        GeometryReader { gr in
            ZStack {
                Group {
                    RoundedRectangle(cornerRadius: 20)
                        .offset(x: -40, y: -40)
                    RoundedRectangle(cornerRadius: 20)
                        .shadow(radius: 8)
                    RoundedRectangle(cornerRadius: 20)
                        .shadow(radius: 8)
                        .offset(x: 40, y: 40)
                }
                .frame(width: gr.size.width - 120, height: gr.size.height - 270)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 2))
            .foregroundStyle(.orange)
            .padding()
        }
    }
}

#Preview {
    DepthStack()
}
