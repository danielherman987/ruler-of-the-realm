//
//  task.swift
//  ruler-of-the-realm
//
//  Created by Daniel Herman on 2/15/25.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
}
