//
//  View_And_Modifier_Concept.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 11.02.25.
//

import SwiftUI

struct View_And_Modifier_Concept: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Views & Modifiers").font(.largeTitle)
            Text("Concepts").foregroundStyle(.gray)
            Text("Building a UI with SwiftUI consists of using Views and Modifiers. Traditional methods used controls and properties. With SwiftUI, you add a view and then set properties with modifiers.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .layoutPriority(1)
            Button(action: {}) {
                Text("Button with Shadow")
                    .foregroundStyle(.white)
                    .padding(12)
            }
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.orange)
                    .shadow(color: .gray, radius: 5, y: 5)
            }
        }
        .font(.title)
    }
}

#Preview {
    View_And_Modifier_Concept()
}
