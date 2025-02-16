//
//  ScopeAndOverriding.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 16.02.25.
//

import SwiftUI

struct ScopeAndOverriding: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Refactoring")
                .font(.largeTitle)
            Text("Reusing Modifiers")
                .font(.title)
                .foregroundStyle(.gray)
            Text("You can put common modifiers on the parent views to be applied to all children views.")
                .font(.title)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.white)
                .padding()
                .background(Color.blue)
        }
    }
}

#Preview {
    ScopeAndOverriding()
}
