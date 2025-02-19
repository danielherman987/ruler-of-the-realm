//
//  user.swift
//  ruler-of-the-realm
//
//  Created by Daniel Herman on 2/15/25.
//

import Foundation

//struct User: Identifiable {
//    var id = UUID()
//}

struct Character: Identifiable {
    var id = UUID()
    var xp: Int
    var characterClass: CharacterClass
}
