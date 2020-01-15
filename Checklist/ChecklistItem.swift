//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Xiaochun Shen on 2020/1/10.
//  Copyright © 2020 SXC. All rights reserved.
//

import Foundation

struct ChecklistItem: Identifiable, Codable {
    let id = UUID()
    var name: String
    var isChecked = false
}
