//
//  LazyHStack_WithScrolling.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 29.05.25.
//

import SwiftUI

struct LazyHStack_WithScrolling: View {
    @State private var whatAppeared = ""
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("LazyHStack",
                       subtitle: "With Scrolling",
                       desc: "The LazyHStack is best used with many views that scroll off the screen. \"Lazy\" means views off the screen are not created unless shown. This increases performance.",
                       back: .yellow)
            
            Spacer()
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 20) {
                    ForEach(0..<51) { item in
                        Image(systemName: "\(item).circle")
                            .onAppear {
                                whatAppeared = "\(item).circle"
                            }
                    }
                }
            }
            .font(.largeTitle)
            .padding()
            
            Text(whatAppeared)
            
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    LazyHStack_WithScrolling()
}
