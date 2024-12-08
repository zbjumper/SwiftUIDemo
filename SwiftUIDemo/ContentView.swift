//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 张博 on 2024/12/7.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Tabs = .views
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("ResearchViewsView", systemImage: "tray.and.arrow.down.fill", value: .views) {
                ResearchViewsView()
            }
            .badge(2)
            
            Tab("ResearchMidifiersView", systemImage: "tray.and.arrow.down.fill", value: .midifiers) {
                ResearchMidifiersView()
            }
            .badge(2)   
        }
    }
}

enum Tabs: Equatable, Hashable {

    
    case views
    case midifiers
}

#Preview {
    ContentView()
}
