import Foundation

struct Priorities {
    var priorityOne: Focuses
    var priorityTwo: Focuses
    var priorityThree: Focuses
}

enum classTypes {
    case ElderShaman
    case TemporalAssassin
    case AstralGladiator
    case MysticEngineer
    case VoidKnight
    case CelestialBard
    case RuneWitch
    case FrostMonk
    case GaleKnight
    case ChaosMage
    case DivineTactician
    case PhoenixBeastmaster
    
    var stringValue: String {
        switch self {
        case .ElderShaman: return "Elder Shaman"
        case .TemporalAssassin: return "Temporal Assassin"
        case .AstralGladiator: return "Astral Gladiator"
        case .MysticEngineer: return "Mystic Engineer"
        case .VoidKnight: return "Void Knight"
        case .CelestialBard: return "Celestial Bard"
        case .RuneWitch: return "Rune Witch"
        case .FrostMonk: return "Frost Monk"
        case .GaleKnight: return "Gale Knight"
        case .ChaosMage: return "Chaos Mage"
        case .DivineTactician: return "Divine Tactician"
        case .PhoenixBeastmaster: return "Phoenix Beastmaster"
        }
    }
}

class CharacterClass {
    var characterImage: String
    var priorities: Priorities
    var classType: classTypes?

    init(characterImage: String, priorities: Priorities) {
        self.characterImage = characterImage
        self.priorities = priorities
        self.classType = determineClassType(for: priorities)
    }

    // Method to determine the class type based on priorities
    func setClassType(for priorities: Priorities) -> classTypes? {
        return determineClassType(for: priorities)
    }
}
