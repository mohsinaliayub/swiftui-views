//
//  HStack_LayoutPriority.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 22.05.25.
//

import SwiftUI

struct HStack_LayoutPriority: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("HStack",
                       subtitle: "Layout Priority",
                       desc: "Use the layoutPriority modifier to give priority to the space a view needs to show its content.",
                       back: .orange)
            
            Text(".layoutPriority(1) is set on \'Brings Balance\'")
                .font(.caption)
            
            HStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .lineLimit(1)
                Image("SwiftUI")
                    .resizable()
                    .frame(width: 80, height: 80)
                Text("Brings Balance")
                    .font(.largeTitle)
                    .lineLimit(1)
                    .layoutPriority(1)
            }
            .padding(.horizontal)
            
            HStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .layoutPriority(1)
                Image("SwiftUI")
                    .resizable()
                    .frame(width: 80, height: 80)
                Text("Brings Balance")
                    .font(.largeTitle)
                    .lineLimit(1)
            }
            .padding(.horizontal)
            
            Text(".layoutPriority(1) is set on \'SwiftUI\'")
                .font(.caption)
        }
        .font(.title2)
    }
}

#Preview {
    HStack_LayoutPriority()
}
