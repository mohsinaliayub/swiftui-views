//
//  AddVStack.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 14.02.25.
//

import SwiftUI

struct AddVStack: View {
    var body: some View {
        // Only one view can be returned from the body property.
        // Add 20 points between views within this container.
        VStack(spacing: 20) { // VStack is a container view that can contain multiple views.
            Text("Title")
                .font(.largeTitle)
        }
    }
}

#Preview {
    AddVStack()
}
