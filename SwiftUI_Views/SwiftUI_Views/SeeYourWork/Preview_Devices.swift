//
//  Preview_Devices.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 13.05.25.
//

import SwiftUI

struct Preview_Devices: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Previews").font(.largeTitle)
            Text("Change Devices").foregroundStyle(Color.gray)
            Text("By default, your canvas will use the simulator you currently have selected (upper left in Xcode). You can preview a different device using the previewDevice modifier.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundStyle(Color.white)
        }
        .font(.title)
    }
}

#Preview {
    Preview_Devices()
}
