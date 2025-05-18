//
//  LazyVStack_Table.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 18.05.25.
//

import SwiftUI

struct LazyVStack_Table: View {
    @State private var profiles = MockData.getProfiles()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(profiles) { profile in
                        NavigationLink(destination: Text("destination")) {
                            HStack {
                                Image(profile.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                Text(profile.name)
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                        .buttonStyle(.plain) // Removes accent color
                    }
                }
            }
            .navigationTitle("People")
        }
    }
}

#Preview {
    LazyVStack_Table()
}
