//
//  EditButtonResearch.swift
//  SwiftUIDemo
//
//  Created by 张博 on 2024/12/7.
//

import SwiftUI

struct EditButtonResearch: View {
    @State private var fruits = [
        "苹果".localized("EditButtonLocalizable"),
        "香蕉".localized("EditButtonLocalizable"),
        "木瓜".localized("EditButtonLocalizable"),
        "芒果".localized("EditButtonLocalizable")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }
                .onDelete { fruits.remove(atOffsets: $0) }
                .onMove { fruits.move(fromOffsets: $0, toOffset: $1) }
            }
            .navigationTitle("水果".localized("EditButtonLocalizable"))
            .toolbar {
                EditButton()
            }
        }
    }
}

#Preview {
    EditButtonResearch()
}
