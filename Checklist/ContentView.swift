//
//  ContentView.swift
//  Checklist
//
//  Created by Xiaochun Shen on 2020/1/8.
//  Copyright © 2020 SXC. All rights reserved.
//

import SwiftUI

struct ChecklistItem {
    var name: String
    var isChecked = false
}

struct ContentView: View {
    @State var checklistItems = [
        ChecklistItem(name: "Walk the dog"),
        ChecklistItem(name:"Brush my teeth"),
        ChecklistItem(name:"Learn iOS development", isChecked: true),
        ChecklistItem(name:"Soccer practice"),
        ChecklistItem(name:"Eat ice cream", isChecked: true),
    ]
    
    var myArray = [
        "This is an item",
        "This is another item",
        "Third item!",
    ]
    
    
    var body: some View {
      //  NavigationView {
            //ForEach(checklistItems, id: \.self.name) { checklistItem in
              ForEach(checklistItems, id: \.self.name) { checklistItem in
                HStack {
                    Text(checklistItem.name)
                    Spacer()
                    if checklistItems.isChecked {
                        Text("✅")
                    } else {
                        Text("◻⃞")
                    }
                }
            }
//            onDelete(perform: deleteListItem)
//            .onMove(perform: moveListItem)
//
//                .navigationBarItems(trailing: EditButton())
//                .navigationBarTitle("Checklist")
//                .onAppear() {
//
//                    self.printChecklistContents()
                }

  //   }
   
    

    func printChecklistContents() {
        for item in checklistItems {
            print(item)
        }
    }
    
    func deleteListItem(whichElement: IndexSet) {
        checklistItems.remove(atOffsets: whichElement)
        printChecklistContents()
    }
    
    
    func moveListItem(whichElement: IndexSet, destination: Int) {
        checklistItems.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContents()
    }

 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
