//
//  UnderstandingTheSomeKeywordSolution.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 11.02.25.
//

import SwiftUI

struct UnderstandingTheSomeKeywordSolution: View {
    var isYellow = true
    
    // The keyword "some" tells us that whatever we return, it has to:
    // 1. Conform to the View protocol
    // 2. Has to ALWAYS be the same type of View that is returned.”
    var body: some View {
        if isYellow {
            return Color.yellow
        }
        
        return Color.gray
    }
}

#Preview {
    UnderstandingTheSomeKeywordSolution()
}
