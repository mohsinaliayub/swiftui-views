//
//  VStack_Alignment.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 18.05.25.
//

import SwiftUI

struct VStack_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("VStack")
                .font(.largeTitle)
            Text("Alignment")
                .font(.title)
                .foregroundStyle(.gray)
            Text("By default, views in a VStack are center aligned.")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
            
            VStack(alignment: .leading, spacing: 40) {
                Text("Leading Alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.left")
            }
            .padding()
            .foregroundStyle(.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundStyle(.blue)
            .padding()
            
            VStack(alignment: .trailing, spacing: 40) {
                Text("Trailing Alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.right")
            }
            .padding()
            .foregroundStyle(.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundStyle(.blue)
            .padding()
        }
    }
}

#Preview {
    VStack_Alignment()
}
