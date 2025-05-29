//
//  LazyHStack_HeadersFooters.swift
//  SwiftUI_Views
//
//  Created by Mohsin Ali Ayub on 29.05.25.
//

import SwiftUI

struct LazyHStack_HeadersFooters: View {
    @State private var teams = MockData.getTeams()
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("LazyHStack",
                       subtitle: "Headers & Footers",
                       desc: "Using the Section View, you can add a header and footer inside a LazyHStack.",
                       back: .yellow)
            
            Spacer()
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 5) {
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

struct TeamHorizontalHeaderView: View {
    let team: MockData.Team
    
    var body: some View {
        VStack(spacing: 8) {
            Text("Team")
                .font(.title2)
            Image(systemName: team.imageName)
                .font(.system(size: 50))
        }
        .frame(width: 75, height: 100)
        .background(
            Rectangle()
                .fill(Color.yellow)
                .opacity(0.9)
        )
        .padding(.bottom, 8)
    }
}

struct TeamHorizontalFooterView: View {
    let team: MockData.Team
    
    var body: some View {
        VStack(spacing: 0) {
            Text("Total")
                .font(.title2)
            Text("\(team.people.count)")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .frame(width: 60, height: 100)
        .background(
            Rectangle()
                .fill(Color.yellow)
                .opacity(0.9)
        )
        .padding(.bottom, 8)
    }
}

#Preview {
    LazyHStack_HeadersFooters()
}
