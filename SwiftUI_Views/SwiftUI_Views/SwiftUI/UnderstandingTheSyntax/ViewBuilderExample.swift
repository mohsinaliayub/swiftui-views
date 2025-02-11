//
//  ViewBuilderExample.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 11.02.25.
//

import SwiftUI

struct ViewBuilderExample: View {
    var body: some View {
        VStack {
            Text("View 1")
            Text("View 2")
            Text("View 3")
            Text("View 4")
            Text("View 5")
            Text("View 6")
            Text("View 7")
            Text("View 8")
            Text("View 9")
            VStack { // The VStack is now the 10th view
                Text("View 10")
                Text("View 11")
            }
            // With iOS 17 and later, you can add more than 10 views.
            // Nesting is no longer necessary.
            Text("View 12")
        }
    }
}

#Preview {
    ViewBuilderExample()
}
