//
//  LazyHStack_PinnedViews.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 29.05.25.
//

import SwiftUI

struct LazyHStack_PinnedViews: View {
    @State private var teams = MockData.getTeams()
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("LazyHStack",
                       subtitle: "Pinned Views",
                       desc: "LazyHStacks can also have section headers and section footers that can be pinned so they only scroll when the next header/footer comes.",
                       back: .yellow)
            
            Spacer()
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 5, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    ForEach(teams) { team in
                        Section {
                            ForEach(team.people) { person in
                                Image(person.imageName)
                                    .resizable()
                                    .aspectRatio(1.0, contentMode: .fit)
                                    .frame(width: 100)
                                    .padding(.bottom, 8)
                            }
                        } header: {
                            TeamHorizontalHeaderView(team: team)
                        } footer: {
                            TeamHorizontalFooterView(team: team)
                        }
                    }
                }
            }
            .frame(height: 108)
            
            Spacer()
            
        }
        .font(.title)
    }
}

#Preview {
    LazyHStack_PinnedViews()
}
