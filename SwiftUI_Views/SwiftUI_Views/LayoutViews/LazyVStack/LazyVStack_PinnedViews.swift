//
//  LazyVStack_PinnedViews.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 18.05.25.
//

import SwiftUI

struct LazyVStack_PinnedViews: View {
    @State private var teams = MockData.getTeams()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("LazyVStack",
                       subtitle: "Pinned Views",
                       desc: "LazyVStacks can also have section headers and section footers that can be pinned so they only scroll when the next header/footer comes.",
                       back: .yellow)
            
            ScrollView {
                LazyVStack(spacing: 5, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    ForEach(teams) { team in
                        Section {
                            ForEach(team.people) { person in
                                Image(person.imageName)
                                    .resizable()
                                    .frame(width: 300, height: 300)
                            }
                        } header: {
                            TeamVerticalHeaderView(team: team)
                        } footer: {
                            TeamVerticalFooterView(team: team)
                        }
                    }
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    LazyVStack_PinnedViews()
}
