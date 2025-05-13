//
//  Preview_LightAndDarkMode.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 13.05.25.
//

import SwiftUI

struct Preview_LightAndDarkMode: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Previews",
                       subtitle: "Light & Dark Modes Together",
                       desc: "Use Color Scheme Variants to see light and dark modes together.",
                       back: .red,
                       textColor: .white)
        }
        .font(.title)
    }
}

#Preview {
    Preview_LightAndDarkMode()
}
