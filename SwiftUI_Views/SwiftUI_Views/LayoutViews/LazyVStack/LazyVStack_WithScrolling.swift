//
//  LazyVStack_WithScrolling.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 18.05.25.
//

import SwiftUI

struct LazyVStack_WithScrolling: View {
    @State private var teams = MockData.getTeams()
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("LazyVStack",
                       subtitle: "With Scrolling",
                       desc: "The LazyVStack is best used with many views that scroll off the screen. \"Lazy\" means views off the screen are not created unless shown. This increases performance.",
                       back: .yellow)
            
            ScrollView {
                LazyVStack(spacing: 5) {
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
    LazyVStack_WithScrolling()
}

struct TeamVerticalHeaderView: View {
    let team: MockData.Team
    
    var body: some View {
        HStack {
            Text("Team")
                .font(.largeTitle)
            Image(systemName: team.imageName)
                .font(.largeTitle)
        }
        .frame(width: 300, height: 75)
        .background(
            Rectangle().fill(Color.yellow).opacity(0.9)
        )
    }
}

struct TeamVerticalFooterView: View {
    let team: MockData.Team
    
    var body: some View {
        HStack {
            Text("Team Total: ")
                .font(.title)
            Text("\(team.people.count)")
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(width: 300, height: 50)
        .background(
            Rectangle().fill(.yellow).opacity(0.9)
        )
    }
}
