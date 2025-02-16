//
//  class-functions.swift
//  ruler-of-the-realm
//
//  Created by Daniel Herman on 2/15/25.
//

import Foundation

func determineClassType(for priorities: Priorities) -> classTypes? {
    let allPriorities = [priorities.priorityOne, priorities.priorityTwo, priorities.priorityThree]
    // Sort the priorities to ignore order
    let sortedPriorities = allPriorities.sorted()
    
    // Match sorted priorities with predefined class combinations
    switch sortedPriorities {
    case [Focuses.spiritual, Focuses.religious, Focuses.work]:
        return .ElderShaman
    case [Focuses.work, Focuses.sports, Focuses.school]:
        return .TemporalAssassin
    case [Focuses.workout, Focuses.sports, Focuses.school]:
        return .AstralGladiator
    case [Focuses.work, Focuses.school, Focuses.finances]:
        return .MysticEngineer
    case [Focuses.workout, Focuses.spiritual, Focuses.school]:
        return .VoidKnight
    case [Focuses.spiritual, Focuses.religious, Focuses.music]:
        return .CelestialBard
    case [Focuses.spiritual, Focuses.school, Focuses.finances]:
        return .RuneWitch
    case [Focuses.workout, Focuses.school, Focuses.spiritual]:
        return .FrostMonk
    case [Focuses.workout, Focuses.sports, Focuses.music]:
        return .GaleKnight
    case [Focuses.work, Focuses.school, Focuses.spiritual]:
        return .ChaosMage
    case [Focuses.religious, Focuses.school, Focuses.finances]:
        return .DivineTactician
    case [Focuses.chores, Focuses.sports, Focuses.spiritual]:
        return .PhoenixBeastmaster
    default:
        return nil // or another default case
    }
}

func determineClassTypeString(for priorities: [String]) -> classTypes? {
    // Sort the priorities to ignore order
    let sortedPriorities = priorities.sorted()
    
    // Match sorted priorities with predefined class combinations
    switch sortedPriorities {
    case [Focuses.religious.rawValue, Focuses.spiritual.rawValue, Focuses.work.rawValue]:
        return .ElderShaman
    case [Focuses.school.rawValue, Focuses.sports.rawValue, Focuses.work.rawValue]:
        return .TemporalAssassin
    case [Focuses.school.rawValue, Focuses.sports.rawValue, Focuses.workout.rawValue]:
        return .AstralGladiator
    case [Focuses.finances.rawValue, Focuses.school.rawValue, Focuses.work.rawValue]:
        return .MysticEngineer
    case [Focuses.school.rawValue, Focuses.spiritual.rawValue, Focuses.workout.rawValue]:
        return .VoidKnight
    case [Focuses.music.rawValue, Focuses.religious.rawValue, Focuses.spiritual.rawValue]:
        return .CelestialBard
    case [Focuses.finances.rawValue, Focuses.school.rawValue, Focuses.spiritual.rawValue]:
        return .RuneWitch
    case [Focuses.school.rawValue, Focuses.spiritual.rawValue, Focuses.workout.rawValue]:
        return .FrostMonk
    case [Focuses.music.rawValue, Focuses.sports.rawValue, Focuses.workout.rawValue]:
        return .GaleKnight
    case [Focuses.school.rawValue, Focuses.spiritual.rawValue, Focuses.work.rawValue]:
        return .ChaosMage
    case [Focuses.finances.rawValue, Focuses.religious.rawValue, Focuses.school.rawValue]:
        return .DivineTactician
    case [Focuses.chores.rawValue, Focuses.sports.rawValue, Focuses.spiritual.rawValue]:
        return .PhoenixBeastmaster
    default:
        return nil // or another default case
    }

}
