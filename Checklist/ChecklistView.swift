//
//  ContentView.swift
//  Checklist
//
//  Created by Xiaochun Shen on 2020/1/8.
//  Copyright © 2020 SXC. All rights reserved.
//

import SwiftUI



struct ChecklistView: View {
    // Properties
    // ==========
    
    @ObservedObject var checklist = Checklist()
    
    // User interface content and layout
    var body: some View {
        NavigationView {
            List {
                ForEach(checklist.items) { checklistItem in
                    HStack {
                        Text(checklistItem.name)
                        Spacer()
                        Text(checklistItem.isChecked ? "✅" : "◻⃞")
                    }
                    .background(Color.white) // This makes the entire row clickable
                        
                    .onTapGesture {
                        if let matchingIndex = self.checklist.items.firstIndex(where: {
                            $0.id == checklistItem.id
                        }) {
                            self.checklist.items[matchingIndex].isChecked.toggle()
                        }
                        self.checklist.printChecklistContents()
                    }
                    
                  }
                   // .onDelete(perform: deleteListItem)
                 //   .onMove(perform: moveListItem)
                    }
                .navigationBarItems(trailing: EditButton())
                .navigationBarTitle("Checklist")
                .onAppear() {
                        self.checklist.printChecklistContents()
                }
            

        }
   
    }
    
    

 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChecklistView()
    }
}
