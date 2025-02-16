import Foundation

struct Priorities {
    var priorityOne: Focuses
    var priorityTwo: Focuses
    var priorityThree: Focuses
}

enum classTypes: String {
    case ElderShaman = "Elder Shaman"
    case TemporalAssassin = "Temporal Assassin"
    case AstralGladiator = "Astral Gladiator"
    case MysticEngineer = "Mystic Engineer"
    case VoidKnight = "Void Knight"
    case CelestialBard = "Celestial Bard"
    case RuneWitch = "Rune Witch"
    case FrostMonk = "Frost Monk"
    case GaleKnight = "Gale Knight"
    case ChaosMage = "Chaos Mage"
    case DivineTactician = "Divine Tactician"
    case PhoenixBeastmaster = "Phoenix Beastmaster"
    case ShadowScholar = "Shadow Scholar"
    case ArcaneStrategist = "Arcane Strategist"
    case BattleSage = "Battle Sage"
    case CelestialArtisan = "Celestial Artisan"
    case IronDisciple = "Iron Disciple"
    case SpiritSentinel = "Spirit Sentinel"
    case FrostChampion = "Frost Champion"
    case HolyBlacksmith = "Holy Blacksmith"
    case ThunderSamurai = "Thunder Samurai"
    case BladeApostle = "Blade Apostle"
    case WarlockMonk = "Warlock Monk"
    case PhantomComposer = "Phantom Composer"
    case WildSeer = "Wild Seer"
    case ArcaneWarden = "Arcane Warden"
    case SilentRonin = "Silent Ronin"
    case RiftDancer = "Rift Dancer"
    case RuneCrusader = "Rune Crusader"
    case TemplarSeer = "Templar Seer"
    case CelestialRuneblade = "Celestial Runeblade"
    case VoidAlchemist = "Void Alchemist"
    case MysticGladiator = "Mystic Gladiator"
    case ChaosBlacksmith = "Chaos Blacksmith"
    case AstralLibrarian = "Astral Librarian"
    case StormTactician = "Storm Tactician"
    case PhantomPaladin = "Phantom Paladin"
    case DivineScribe = "Divine Scribe"
    case CelestialKnight = "Celestial Knight"
    case SpiritSculptor = "Spirit Sculptor"
    case RunicChampion = "Runic Champion"
    case GaleInquisitor = "Gale Inquisitor"
    case WarbornOracle = "Warborn Oracle"
    case IronShaman = "Iron Shaman"
    case FrostWarden = "Frost Warden"
    case BladeScribe = "Blade Scribe"
    case PhantomProphet = "Phantom Prophet"
    case ChaosDruid = "Chaos Druid"
    case StormSeer = "Storm Seer"
    case DivineArtificer = "Divine Artificer"
    case RuneSentinel = "Rune Sentinel"
    case PhoenixScholar = "Phoenix Scholar"
    case AstralOracle = "Astral Oracle"
    case WarlockTemplar = "Warlock Templar"
    case CelestialMystic = "Celestial Mystic"
    case RiftSorcerer = "Rift Sorcerer"
    case GaleTactician = "Gale Tactician"
    case FrostArtificer = "Frost Artificer"
    case IronSage = "Iron Sage"
    case ThunderWarden = "Thunder Warden"
    case HolyRogue = "Holy Rogue"
    case PhantomWarlord = "Phantom Warlord"
    case ArcanePaladin = "Arcane Paladin"
    case BladeCrusader = "Blade Crusader"
    case WildTactician = "Wild Tactician"
    case ArcaneLancer = "Arcane Lancer"
    case RuneScribe = "Rune Scribe"
    case DivineRonin = "Divine Ronin"
    case VoidSculptor = "Void Sculptor"
    case FrostRuneblade = "Frost Runeblade"
    case ChaosChampion = "Chaos Champion"
    case RiftMonk = "Rift Monk"
    case CelestialProphet = "Celestial Prophet"
    case ArcaneOracle = "Arcane Oracle"
    case MysticBlacksmith = "Mystic Blacksmith"
    case PhoenixScribe = "Phoenix Scribe"
    case ShadowWarden = "Shadow Warden"
    case WarbornSculptor = "Warborn Sculptor"
    case FrostSeer = "Frost Seer"
    case SpiritWarlord = "Spirit Warlord"
    case PhantomStrategist = "Phantom Strategist"
    case RuneProphet = "Rune Prophet"
    case StormScribe = "Storm Scribe"
    case BattleAlchemist = "Battle Alchemist"
    case RiftChampion = "Rift Champion"
    case ThunderCrusader = "Thunder Crusader"
    case WarlockScholar = "Warlock Scholar"
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
