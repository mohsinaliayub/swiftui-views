//
//  Grids.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 11.02.25.
//

import SwiftUI

struct Grids: View {
    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
            ForEach(0..<5, id: \.self) { _ in
                RoundedRectangle(cornerRadius: 20)
                    .fill(.orange)
                    .frame(height: 200)
            }
        }
        .padding(24)
        .background(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4))
        .padding()
    }
}

#Preview {
    Grids()
}
