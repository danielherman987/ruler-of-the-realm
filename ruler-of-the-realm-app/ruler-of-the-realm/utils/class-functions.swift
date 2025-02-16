import Foundation

let classTypeMap: [Set<String>: classTypes] = [
    Set([Focuses.chores.rawValue, Focuses.finances.rawValue, Focuses.music.rawValue]): .ThunderWarden,
    Set([Focuses.chores.rawValue, Focuses.finances.rawValue, Focuses.religious.rawValue]): .MysticBlacksmith,
    Set([Focuses.chores.rawValue, Focuses.finances.rawValue, Focuses.school.rawValue]): .WarlockScholar,
    Set([Focuses.chores.rawValue, Focuses.finances.rawValue, Focuses.spiritual.rawValue]): .RiftMonk,
    Set([Focuses.chores.rawValue, Focuses.finances.rawValue, Focuses.sports.rawValue]): .BladeScribe,
    Set([Focuses.chores.rawValue, Focuses.finances.rawValue, Focuses.work.rawValue]): .WarbornSculptor,
    Set([Focuses.chores.rawValue, Focuses.finances.rawValue, Focuses.workout.rawValue]): .FrostWarden,
    Set([Focuses.chores.rawValue, Focuses.music.rawValue, Focuses.religious.rawValue]): .PhantomComposer,
    Set([Focuses.chores.rawValue, Focuses.music.rawValue, Focuses.school.rawValue]): .SpiritSculptor,
    Set([Focuses.chores.rawValue, Focuses.music.rawValue, Focuses.spiritual.rawValue]): .RiftDancer,
    Set([Focuses.chores.rawValue, Focuses.music.rawValue, Focuses.sports.rawValue]): .WarbornOracle,
    Set([Focuses.chores.rawValue, Focuses.music.rawValue, Focuses.work.rawValue]): .PhoenixScholar,
    Set([Focuses.chores.rawValue, Focuses.music.rawValue, Focuses.workout.rawValue]): .StormScribe,
    Set([Focuses.chores.rawValue, Focuses.religious.rawValue, Focuses.school.rawValue]): .VoidSculptor,
    Set([Focuses.chores.rawValue, Focuses.religious.rawValue, Focuses.spiritual.rawValue]): .AstralOracle,
    Set([Focuses.chores.rawValue, Focuses.religious.rawValue, Focuses.sports.rawValue]): .ArcaneLancer,
    Set([Focuses.chores.rawValue, Focuses.religious.rawValue, Focuses.work.rawValue]): .PhoenixScribe,
    Set([Focuses.chores.rawValue, Focuses.religious.rawValue, Focuses.workout.rawValue]): .SpiritWarlord,
    Set([Focuses.chores.rawValue, Focuses.school.rawValue, Focuses.spiritual.rawValue]): .RuneScribe,
    Set([Focuses.chores.rawValue, Focuses.school.rawValue, Focuses.sports.rawValue]): .BladeCrusader,
    Set([Focuses.chores.rawValue, Focuses.school.rawValue, Focuses.work.rawValue]): .GaleTactician,
    Set([Focuses.chores.rawValue, Focuses.school.rawValue, Focuses.workout.rawValue]): .IronDisciple,
    Set([Focuses.chores.rawValue, Focuses.spiritual.rawValue, Focuses.sports.rawValue]): .SilentRonin,
    Set([Focuses.chores.rawValue, Focuses.spiritual.rawValue, Focuses.work.rawValue]): .SpiritSentinel,
    Set([Focuses.chores.rawValue, Focuses.spiritual.rawValue, Focuses.workout.rawValue]): .FrostChampion,
    Set([Focuses.chores.rawValue, Focuses.sports.rawValue, Focuses.work.rawValue]): .TemporalAssassin,
    Set([Focuses.chores.rawValue, Focuses.sports.rawValue, Focuses.workout.rawValue]): .ThunderCrusader,
    Set([Focuses.chores.rawValue, Focuses.work.rawValue, Focuses.workout.rawValue]): .RiftChampion,
    
    Set([Focuses.finances.rawValue, Focuses.music.rawValue, Focuses.religious.rawValue]): .AstralLibrarian,
    Set([Focuses.finances.rawValue, Focuses.music.rawValue, Focuses.school.rawValue]): .WildSeer,
    Set([Focuses.finances.rawValue, Focuses.music.rawValue, Focuses.spiritual.rawValue]): .RuneWitch,
    Set([Focuses.finances.rawValue, Focuses.music.rawValue, Focuses.sports.rawValue]): .FrostSeer,
    Set([Focuses.finances.rawValue, Focuses.music.rawValue, Focuses.work.rawValue]): .WildTactician,
    Set([Focuses.finances.rawValue, Focuses.music.rawValue, Focuses.workout.rawValue]): .StormSeer,
    Set([Focuses.finances.rawValue, Focuses.religious.rawValue, Focuses.school.rawValue]): .PhantomStrategist,
    Set([Focuses.finances.rawValue, Focuses.religious.rawValue, Focuses.spiritual.rawValue]): .DivineArtificer,
    Set([Focuses.finances.rawValue, Focuses.religious.rawValue, Focuses.sports.rawValue]): .ArcaneStrategist,
    Set([Focuses.finances.rawValue, Focuses.religious.rawValue, Focuses.work.rawValue]): .HolyBlacksmith,
    Set([Focuses.finances.rawValue, Focuses.religious.rawValue, Focuses.workout.rawValue]): .GaleKnight,
    Set([Focuses.finances.rawValue, Focuses.school.rawValue, Focuses.spiritual.rawValue]): .MysticEngineer,
    Set([Focuses.finances.rawValue, Focuses.school.rawValue, Focuses.sports.rawValue]): .RuneSentinel,
    Set([Focuses.finances.rawValue, Focuses.school.rawValue, Focuses.work.rawValue]): .MysticGladiator,
    Set([Focuses.finances.rawValue, Focuses.school.rawValue, Focuses.workout.rawValue]): .PhantomWarlord,
    Set([Focuses.finances.rawValue, Focuses.spiritual.rawValue, Focuses.sports.rawValue]): .PhantomStrategist,
    Set([Focuses.finances.rawValue, Focuses.spiritual.rawValue, Focuses.work.rawValue]): .ShadowWarden,
    Set([Focuses.finances.rawValue, Focuses.spiritual.rawValue, Focuses.workout.rawValue]): .ArcanePaladin,
    Set([Focuses.finances.rawValue, Focuses.sports.rawValue, Focuses.work.rawValue]): .GaleInquisitor,
    Set([Focuses.finances.rawValue, Focuses.sports.rawValue, Focuses.workout.rawValue]): .ChaosDruid,
    Set([Focuses.finances.rawValue, Focuses.work.rawValue, Focuses.workout.rawValue]): .ChaosBlacksmith,
    
    Set([Focuses.music.rawValue, Focuses.religious.rawValue, Focuses.school.rawValue]): .CelestialBard,
    Set([Focuses.music.rawValue, Focuses.religious.rawValue, Focuses.spiritual.rawValue]): .CelestialArtisan,
    Set([Focuses.music.rawValue, Focuses.religious.rawValue, Focuses.sports.rawValue]): .BladeApostle,
    Set([Focuses.music.rawValue, Focuses.religious.rawValue, Focuses.work.rawValue]): .BattleSage,
    Set([Focuses.music.rawValue, Focuses.religious.rawValue, Focuses.workout.rawValue]): .TemplarSeer,
    Set([Focuses.music.rawValue, Focuses.school.rawValue, Focuses.spiritual.rawValue]): .StormTactician,
    Set([Focuses.music.rawValue, Focuses.school.rawValue, Focuses.sports.rawValue]): .CelestialProphet,
    Set([Focuses.music.rawValue, Focuses.school.rawValue, Focuses.work.rawValue]): .ArcaneOracle,
    Set([Focuses.music.rawValue, Focuses.school.rawValue, Focuses.workout.rawValue]): .ChaosMage,
    Set([Focuses.music.rawValue, Focuses.spiritual.rawValue, Focuses.sports.rawValue]): .HolyRogue,
    Set([Focuses.music.rawValue, Focuses.spiritual.rawValue, Focuses.work.rawValue]): .DivineArtificer,
    Set([Focuses.music.rawValue, Focuses.spiritual.rawValue, Focuses.workout.rawValue]): .PhantomProphet,
    Set([Focuses.music.rawValue, Focuses.sports.rawValue, Focuses.work.rawValue]): .DivineScribe,
    Set([Focuses.music.rawValue, Focuses.sports.rawValue, Focuses.workout.rawValue]): .RunicChampion,
    Set([Focuses.music.rawValue, Focuses.work.rawValue, Focuses.workout.rawValue]): .IronSage,
    
    Set([Focuses.religious.rawValue, Focuses.school.rawValue, Focuses.spiritual.rawValue]): .ElderShaman,
    Set([Focuses.religious.rawValue, Focuses.school.rawValue, Focuses.sports.rawValue]): .RuneProphet,
    Set([Focuses.religious.rawValue, Focuses.school.rawValue, Focuses.work.rawValue]): .DivineTactician,
    Set([Focuses.religious.rawValue, Focuses.school.rawValue, Focuses.workout.rawValue]): .DivineRonin,
    Set([Focuses.religious.rawValue, Focuses.spiritual.rawValue, Focuses.sports.rawValue]): .WarlockTemplar,
    Set([Focuses.religious.rawValue, Focuses.spiritual.rawValue, Focuses.work.rawValue]): .CelestialKnight,
    Set([Focuses.religious.rawValue, Focuses.spiritual.rawValue, Focuses.workout.rawValue]): .IronShaman,
    Set([Focuses.religious.rawValue, Focuses.sports.rawValue, Focuses.work.rawValue]): .ArcaneWarden,
    Set([Focuses.religious.rawValue, Focuses.sports.rawValue, Focuses.workout.rawValue]): .AstralGladiator,
    Set([Focuses.religious.rawValue, Focuses.work.rawValue, Focuses.workout.rawValue]): .PhantomPaladin,
    
    Set([Focuses.school.rawValue, Focuses.spiritual.rawValue, Focuses.sports.rawValue]): .WarlockMonk,
    Set([Focuses.school.rawValue, Focuses.spiritual.rawValue, Focuses.work.rawValue]): .RuneWitch,
    Set([Focuses.school.rawValue, Focuses.spiritual.rawValue, Focuses.workout.rawValue]): .CelestialRuneblade,
    Set([Focuses.school.rawValue, Focuses.sports.rawValue, Focuses.work.rawValue]): .FrostRuneblade,
    Set([Focuses.school.rawValue, Focuses.sports.rawValue, Focuses.workout.rawValue]): .BattleAlchemist,
    Set([Focuses.school.rawValue, Focuses.work.rawValue, Focuses.workout.rawValue]): .PhoenixBeastmaster,
    
    Set([Focuses.spiritual.rawValue, Focuses.sports.rawValue, Focuses.work.rawValue]): .AstralGladiator,
    Set([Focuses.spiritual.rawValue, Focuses.sports.rawValue, Focuses.workout.rawValue]): .ThunderSamurai,
    Set([Focuses.spiritual.rawValue, Focuses.work.rawValue, Focuses.workout.rawValue]): .RiftSorcerer,
    Set([Focuses.sports.rawValue, Focuses.work.rawValue, Focuses.workout.rawValue]): .VoidKnight,
]

func determineClassType(for priorities: Priorities) -> classTypes? {
    let allPriorities = [priorities.priorityOne.rawValue, priorities.priorityTwo.rawValue, priorities.priorityThree.rawValue]
    // Sort the priorities alphabetically to ensure order consistency
    let sortedPriorities = allPriorities.sorted()
    
    // Return the class type based on the sorted priorities
    return classTypeMap[Set(sortedPriorities)]
}


func determineClassTypeString(for priorities: [String]) -> classTypes? {
    // Sort the priorities alphabetically to ensure order consistency
    let sortedPriorities = priorities.sorted()
    
    return classTypeMap[Set(sortedPriorities)]
}


// Function to set character image based on class type
func setCharacterImage(classType: classTypes?) -> String? {
    // Replace with actual image paths based on class type
    return classType?.rawValue.replacingOccurrences(of: " ", with: "")
}
