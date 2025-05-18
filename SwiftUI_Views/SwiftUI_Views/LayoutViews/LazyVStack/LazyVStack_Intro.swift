//
//  LazyVStack_Intro.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 18.05.25.
//

import SwiftUI

struct LazyVStack_Intro: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("LazyVStack",
                       subtitle: "Introduction",
                       desc: "When using the LazyVStack by itself, you won't notice much of a difference from the VStack.",
                       back: .yellow)
            .layoutPriority(1)
            
            Text("LazyVStack")
            LazyVStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("VStack")
            VStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("Notice the LazyVStack pushes out horizontally. (No spacers being used here.)")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
        }
        .font(.title)
    }
}

#Preview {
    LazyVStack_Intro()
}
