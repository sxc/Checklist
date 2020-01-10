//
//  RowView.swift
//  Checklist
//
//  Created by Xiaochun Shen on 2020/1/10.
//  Copyright © 2020 SXC. All rights reserved.
//

import SwiftUI

struct RowView: View {
    
    @State var checklistItem: ChecklistItem
    
    var body: some View {
        HStack {
            Text(checklistItem.name)
            Spacer()
            Text(checklistItem.isChecked ? "✅" : "◻⃞")
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(checklistItem: ChecklistItem(name: "Sample item"))
    }
}
