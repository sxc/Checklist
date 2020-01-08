//
//  ContentView.swift
//  Checklist
//
//  Created by Xiaochun Shen on 2020/1/8.
//  Copyright © 2020 SXC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Hight priority")) {
                    Group {
                        Text("Walk the dog")
                        Text("Brush my teech")
                        Text("Learn iOS development")
                        Text("Walk the dog")
                        Text("Brush my teech")
                        Text("Learn iOS development")
                        
                    }
                    
                    
                    Group {
                        Text("Walk the dog")
                        Text("Brush my teech")
                        Text("Learn iOS development")
                        Text("Learn iOS development")
                        Text("Learn iOS development")
                    }
                    
                    
                }
                Section(header: Text("Low priority")) {
                    Text("Soccer practice")
                    Text("Eat ice cream")
                    Text("Eat ice cream")
                    Text("Soccer practice")
                    Text("Eat ice cream")
                    Text("Eat ice cream")
                    Text("Soccer practice")
                    Text("Eat ice cream")
                    Text("Eat ice cream")
                    Text("Eat ice cream")
                }
                
            }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Checklist")
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
