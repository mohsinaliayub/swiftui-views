//
//  BasicSyntax.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 11.02.25.
//

import SwiftUI

struct BasicSyntax: View {
    var body: some View {
        get {
            return Text("Hello, World!")
        }
    }
}

fileprivate struct Person {
    var personType: String {
        get {
            return "Human"
        }
    }
}

#Preview {
    BasicSyntax()
}
