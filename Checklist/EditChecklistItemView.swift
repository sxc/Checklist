//
//  EditChecklistItemView.swift
//  Checklist
//
//  Created by Xiaochun Shen on 2020/1/10.
//  Copyright © 2020 SXC. All rights reserved.
//

import SwiftUI

struct EditChecklistItemView: View {
    
    @Binding var checklistItem: ChecklistItem
    
    var body: some View {
        Form{
            TextField("Name", text: $checklistItem.name)
            Toggle("Completed", isOn: $checklistItem.isChecked)
                
            
        }
    }
}

struct EditChecklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        EditChecklistItemView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
    }
}
