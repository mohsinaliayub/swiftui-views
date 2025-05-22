//
//  HStack_VerticalAlignment.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 22.05.25.
//

import SwiftUI

struct HStack_VerticalAlignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("HStack",
                       subtitle: "Vertical Alignment",
                       desc: "By default, views within an HStack are vertically aligned in the center.",
                       back: .orange)
            .font(.title)
            .layoutPriority(1)
            
            HStack {
                Rectangle().foregroundStyle(.orange).frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing")
                    .padding(.trailing)
            }
            .border(Color.orange)
            
            HStack(alignment: .top) {
                Rectangle().foregroundStyle(.orange).frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Top")
                Spacer()
                Text("Trailing")
                    .padding(.trailing)
            }
            .border(Color.orange)
            
            HStack(alignment: .bottom) {
                Rectangle().foregroundStyle(.orange).frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Bottom")
                Spacer()
                Text("Trailing")
                    .padding(.trailing)
            }
            .border(Color.orange)
        }
    }
}

#Preview {
    HStack_VerticalAlignment()
}
