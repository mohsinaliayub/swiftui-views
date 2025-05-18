//
//  LazyVStack_Alignment.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 18.05.25.
//

import SwiftUI

struct LazyVStack_Alignment: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("LazyVStack",
                       subtitle: "Alignment",
                       desc: "Since LazyVStacks are push-out views (horizontally) the alignment parameter could be useful.",
                       back: .yellow)
            
            Text("Leading")
            
            LazyVStack(alignment: .leading, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("Trailing")
            
            LazyVStack(alignment: .trailing, spacing: 40) {
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
    LazyVStack_Alignment()
}
