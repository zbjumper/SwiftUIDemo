//
//  TabView.swift
//  SwiftUIDemo
//
//  Created by 张博 on 2024/12/22.
//
import SwiftUI

struct ResearchTabView: View {
    
    var body: some View {
        TabView {
            Text("Content 1")
                .tabItem {
                    Label("Content 1", systemImage: "square.and.arrow.up")
                }
            
            Text("Content 2")
                .tabItem {
                    Label("Content 2", systemImage: "square.and.arrow.down")
                }
        }
        .tabViewStyle(.automatic)
        .border(.red)
    }
}
