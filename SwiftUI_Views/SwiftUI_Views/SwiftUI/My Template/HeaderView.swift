//
//  HeaderView.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 15.02.25.
//

import SwiftUI

struct HeaderView: View {
    var title = "Title"
    var subtitle = "Subtitle"
    var desc = "Use this to..."
    var back = Color("GoldColor")
    var textColor = Color.white
    
    init(_ title: String, subtitle: String, desc: String, back: Color = .blue, textColor: Color = Color.primary) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        VStack(spacing: 15) {
            if !title.isEmpty {
                Text(title)
                    .font(.largeTitle)
            }
            
            Text(subtitle)
                .foregroundStyle(.gray)
            
            DescView(desc: desc, back: back, textColor: textColor)
        }
    }
}

struct DescView: View {
    var desc = "Use this to..."
    var back = Color.blue
    var textColor = Color.primary
    
    var body: some View {
        Text(desc)
            .frame(maxWidth: .infinity)
            .padding()
            .background(back)
            .foregroundStyle(textColor)
    }
}

#Preview {
    HeaderView("Title",
               subtitle: "Subtitle",
               desc: "Short description of what I am demonstrating goes here.",
               back: .purple, textColor: .white)
}
