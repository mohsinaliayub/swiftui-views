//
//  Previews_Intro.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 13.05.25.
//

import SwiftUI

struct Previews_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Previews")
                .font(.largeTitle)
            
            Text("Introduction")
                .foregroundStyle(.gray)
            
            Text("Xcode looks for a struct that conforms to the PreviewProvider protocol and accesses its previews property to display a view on the Canvas.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundStyle(.white)
        }
        .font(.title)
    }
}

struct Previews_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Previews_Intro()
    }
}

