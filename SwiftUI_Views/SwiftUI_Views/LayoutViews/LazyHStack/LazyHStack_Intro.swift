//
//  LazyHStack_Intro.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 29.05.25.
//

import SwiftUI

struct LazyHStack_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("LazyHStack",
                       subtitle: "Introduction",
                       desc: "When using the LazyHStack itself, you won't notice much of a difference from the HStack.",
                       back: .yellow)
            
            Text("LazyHStack")
            LazyHStack(spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("HStack")
            HStack(spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            DescView(desc: "Notice the LazyStack pushes out vertically. (No spacers being used here.)",
                     back: .yellow)
        }
        .font(.title)
        .padding(.bottom)
    }
}

#Preview {
    LazyHStack_Intro()
}
