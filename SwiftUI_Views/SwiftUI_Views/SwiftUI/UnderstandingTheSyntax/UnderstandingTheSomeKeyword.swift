//
//  UnderstandingTheSomeKeyword.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 11.02.25.
//

import SwiftUI

struct UnderstandingTheSomeKeyword: View {
    var isYellow = true
    
    // The keyword "some" tells us that whatever we return, it has to:
    // 1. Conform to the View protocol
    // 2. Has to ALWAYS be the same type of View that is returned.”
    var body: some View {
        // ERROR: Function declares an opaque return type, but the return statements
        // in its body do not have matching underlying types
        
        // Uncomment the code below to see the above mentioned error.
//        if isYellow {
//            return Color.yellow // Color type does not match the Text type.
//        }
        
        return Text("Hello, World!") // The Text type does not match the Color type.
    }
}

#Preview {
    UnderstandingTheSomeKeyword()
}
