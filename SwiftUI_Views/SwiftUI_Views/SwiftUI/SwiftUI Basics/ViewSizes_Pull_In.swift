//
//  ViewSizes_Pull_In.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 18.02.25.
//

import SwiftUI

struct ViewSizes_Pull_In: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior").font(.largeTitle)
            Text("Views that Pull In").foregroundStyle(.gray)
            Text("Some Views minimize their frame size so it is only as big as the content within it.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundStyle(.white)
            
            Image(systemName: "arrow.down.to.line.alt")
            
            HStack {
                Image(systemName: "arrow.right.to.line.alt")
                Text("Text views pull in")
                Image(systemName: "arrow.left.to.line.alt")
            }
            
            Image(systemName: "arrow.up.to.line.alt")
            
            Text("Pull-In views tend to center themselves within their parent container view.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundStyle(.white)
        }
        .font(.title2)
    }
}

#Preview {
    ViewSizes_Pull_In()
}
