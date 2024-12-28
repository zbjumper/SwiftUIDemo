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
        
        NavigationView {
            List {
                Section {
                    NavigationLink {
                        ResearchTabView()
                    } label: {
                        Label("Tab", systemImage: "dishwasher.circle")
                    }
                    
                } header: {
                    Text("Tab 探索")
                }
                
                Section("编辑") {
                    NavigationLink {
                        EditButtonResearch()
                    } label: {
                        Label("EditButton", systemImage: "rays")
                    }
                    
                    NavigationLink {
                        EditModeResearch()
                    } label: {
                        Label("EditMode", systemImage: "rays")
                    }
                }
                
                Section("探索Gauge") {
                    NavigationLink {
                        ResearchGaugeView()
                    } label: {
                        Label("Gauge", systemImage: "brain.head.profile")
                    }
                    
                    NavigationLink {
                        StyledGauge()
                    } label: {
                        Label("StyledGauge", systemImage: "brain.head.profile.fill")
                    }
                }
            }
        }
        .navigationTitle("列表")
    }
}

enum Tabs: Equatable, Hashable {
    
    case swiftUIViews
    case views
    case midifiers
}

#Preview {
    ContentView()
}
