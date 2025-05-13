//
//  Preview_SizeCategory.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 13.05.25.
//

import SwiftUI

struct Preview_SizeCategory: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Previews",
                       subtitle: "Dynamic Type Variants",
                       desc: "For testing accessibility text size, use the 'Dynamic Type Variants' option.",
                       back: .red,
                       textColor: .white)
        }.font(.title)
    }
}

#Preview {
    Preview_SizeCategory()
}
