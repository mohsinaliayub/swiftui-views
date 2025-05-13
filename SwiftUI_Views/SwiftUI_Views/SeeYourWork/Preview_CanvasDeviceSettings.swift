//
//  Preview_CanvasDeviceSettings.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 13.05.25.
//

import SwiftUI

struct Preview_CanvasDeviceSettings: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Previews",
                       subtitle: "Canvas Device Settings",
                       desc: "Use canvas device settings to change your preview's color scheme, orientation, and dynamic type.",
                       textColor: .white)
        }
        .font(.title)
    }
}

#Preview("Left", traits: .landscapeLeft) {
    Preview_CanvasDeviceSettings()
}

#Preview("Right", traits: .landscapeRight) {
    Preview_CanvasDeviceSettings()
}
