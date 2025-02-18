//
//  ViewSizes_Pull_Out.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 18.02.25.
//

import SwiftUI

struct ViewSizes_Pull_Out: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior").font(.largeTitle)
            Text("Views that Push Out").foregroundStyle(.gray)
            Text("Some views will push out to fill all available space within their parent.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundStyle(.white)
            
            Color.purple
                .overlay(alignment: .topLeading) {
                    Image(systemName: "arrow.up.left").padding()
                }
                .overlay(alignment: .topTrailing) {
                    Image(systemName: "arrow.up.right").padding()
                }
                .overlay(alignment: .bottomLeading) {
                    Image(systemName: "arrow.down.left").padding()
                }
                .overlay(alignment: .bottomTrailing) {
                    Image(systemName: "arrow.down.right").padding()
                }
                .overlay {
                    Text("Colors are Push-Out views")
                }
                .foregroundStyle(.white)
        }
        .font(.title)
    }
}

#Preview {
    ViewSizes_Pull_Out()
}
