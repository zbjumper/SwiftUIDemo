//
//  EditModeResearch.swift
//  SwiftUIDemo
//
//  Created by 张博 on 2024/12/7.
//

import SwiftUI

struct EditModeResearch: View {
    
    @Environment(\.editMode) private var editMode
    
    @State private var name = "Maria Ruiz"
    
    var body: some View {
        Form {
            if editMode?.wrappedValue.isEditing == true {
                TextField("Name", text: $name)
            } else {
                Text(name)
            }
        }
        .animation(nil, value: editMode?.wrappedValue)
        .toolbar { // Assumes embedding this view in a NavigationView.
            EditButton()
        }
    }
}

#Preview {
    EditModeResearch()
}
