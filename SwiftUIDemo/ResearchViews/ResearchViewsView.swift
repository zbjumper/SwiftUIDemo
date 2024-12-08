//
//  ResearchViewsView.swift
//  SwiftUIDemo
//
//  Created by 张博 on 2024/12/7.
//

import SwiftUI

struct ResearchViewsView: View {
    var body: some View {
        NavigationView {
            List {
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
            }
        }
    }
}

#Preview {
    ResearchViewsView()
}
