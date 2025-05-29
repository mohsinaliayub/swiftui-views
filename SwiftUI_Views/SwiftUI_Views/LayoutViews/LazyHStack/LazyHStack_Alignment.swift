//
//  LazyHStack_Alignment.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 29.05.25.
//

import SwiftUI

struct LazyHStack_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("LazyHStack",
                       subtitle: "Alignment",
                       desc: "Since LazyHStacks are push-out views (vertically) the alignment parameter could be useful.",
                       back: .yellow)
            .layoutPriority(1)
            
            Text("Top")
            LazyHStack(alignment: .top, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("Bottom")
            LazyHStack(alignment: .bottom, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
        }
        .font(.title)
    }
}

#Preview {
    LazyHStack_Alignment()
}
