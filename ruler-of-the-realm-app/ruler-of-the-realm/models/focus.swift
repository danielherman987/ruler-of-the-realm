//
//  File.swift
//  ruler-of-the-realm
//
//  Created by Daniel Herman on 2/15/25.
//

import Foundation

enum Focuses: String, CaseIterable, Comparable {
    case empty = "Select Focus"
    case workout = "workout"
    case work = "work"
    case spiritual = "spiritual"
    case religious = "religious"
    case sports = "sports"
    case school = "school"
    case chores = "chores"
    case finances = "finances"
    case music = "music"
    
    // Conform to Comparable by defining the '<' operator
    static func <(lhs: Focuses, rhs: Focuses) -> Bool {
        return lhs.rawValue > rhs.rawValue
    }
}
