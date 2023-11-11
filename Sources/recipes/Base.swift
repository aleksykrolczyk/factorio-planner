/// BASICS
extension Ingredient {
  public static let CopperPlate = Ingredient(name: "Copper plate", ingredients: [:], craftingTime: 3.2, outputAmount: 1)
  public static let IronPlate = Ingredient(name: "Iron plate", ingredients: [:], craftingTime: 3.2, outputAmount: 1)
  public static let SteelPlate = Ingredient(name: "Steel Plate", ingredients: [:], craftingTime: 16, outputAmount: 1)
  public static let Wood = Ingredient(name: "Wood", ingredients: [:], craftingTime: 0.5, outputAmount: 1)
  public static let Stone = Ingredient(name: "Stone", ingredients: [:], craftingTime: 3.2, outputAmount: 1)
}

/// Logistics
extension Ingredient {
  public static let WoodenChest = Ingredient(
    name: "Wooden chest",
    ingredients: [Wood: 2],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let IronChest = Ingredient(
    name: "Iron chest",
    ingredients: [IronPlate: 8],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let SteelChest = Ingredient(
    name: "Steel chest",
    ingredients: [SteelPlate: 8],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let StorageTank = Ingredient(
    name: "Storage tank",
    ingredients: [IronPlate: 20, SteelPlate: 5],
    craftingTime: 3,
    outputAmount: 1
  )

  public static let TransportBelt = Ingredient(
    name: "Transport belt",
    ingredients: [IronPlate: 1, IronGearWheel: 1],
    craftingTime: 0.5,
    outputAmount: 2
  )
  public static let FastTransportBelt = Ingredient(
    name: "Fast transport belt",
    ingredients: [IronGearWheel: 5, TransportBelt: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let UndergroundBelt = Ingredient(
    name: "Underground belt",
    ingredients: [IronPlate: 1, TransportBelt: 5],
    craftingTime: 1,
    outputAmount: 2
  )
  public static let FastUndergroundBelt = Ingredient(
    name: "Fast underground belt",
    ingredients: [IronGearWheel: 40, UndergroundBelt: 2],
    craftingTime: 2,
    outputAmount: 2
  )
  public static let Splitter = Ingredient(
    name: "Splitter",
    ingredients: [IronPlate: 5, ElectronicCircuit: 5, TransportBelt: 4],
    craftingTime: 1,
    outputAmount: 1
  )
  public static let FastSplitter = Ingredient(
    name: "Fast splitter",
    ingredients: [ElectronicCircuit: 10, IronGearWheel: 10, Splitter: 1],
    craftingTime: 2,
    outputAmount: 1
  )

  public static let BurnerInstert = Ingredient(
    name: "Burner inserter",
    ingredients: [IronPlate: 1, IronGearWheel: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let Inserter = Ingredient(
    name: "Inserter",
    ingredients: [IronPlate: 1, IronGearWheel: 1, ElectronicCircuit: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let LongHandedInserter = Ingredient(
    name: "Long-handed inserter",
    ingredients: [IronPlate: 1, IronGearWheel: 1, Inserter: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let FastInserter = Ingredient(
    name: "Fast inserter",
    ingredients: [IronPlate: 2, ElectronicCircuit: 2, Inserter: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let FilterInserter = Ingredient(
    name: "Filter inserter",
    ingredients: [ElectronicCircuit: 4, FastInserter: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )

  public static let SmallElectricPole = Ingredient(
    name: "Small electric pole",
    ingredients: [Wood: 1, CopperCable: 2],
    craftingTime: 0.5,
    outputAmount: 2
  )
  public static let MediumElectricPole = Ingredient(
    name: "Medium electric pole",
    ingredients: [CopperPlate: 2, SteelPlate: 2, IronStick: 4],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let BigElectricPole = Ingredient(
    name: "Big electric pole",
    ingredients: [CopperPlate: 5, SteelPlate: 5, IronStick: 8],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let Pipe = Ingredient(name: "Pipe", ingredients: [IronPlate: 1], craftingTime: 0.5, outputAmount: 1)
  public static let PipeToGround = Ingredient(
    name: "Pipe to ground",
    ingredients: [IronPlate: 5, Pipe: 10],
    craftingTime: 0.5,
    outputAmount: 2
  )
  public static let Lamp = Ingredient(
    name: "Lamp",
    ingredients: [IronPlate: 1, CopperCable: 3, ElectronicCircuit: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let StoneBrick = Ingredient(
    name: "Stone brick",
    ingredients: [Stone: 2],
    craftingTime: 3.2,
    outputAmount: 1
  )
}

/// INTERMEDIATE PRODUCTS
extension Ingredient {
  public static let RepairPack = Ingredient(
    name: "Repair pack",
    ingredients: [IronGearWheel: 2, ElectronicCircuit: 2],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let Boiler = Ingredient(
    name: "Boiler",
    ingredients: [Pipe: 4, StoneFurnace: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let SteamEngine = Ingredient(
    name: "Steam engine",
    ingredients: [IronPlate: 10, IronGearWheel: 8, Pipe: 5],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let SolarPanel = Ingredient(
    name: "Solar panel",
    ingredients: [CopperPlate: 5, SteelPlate: 5, ElectronicCircuit: 15],
    craftingTime: 10,
    outputAmount: 1
  )
  public static let BurnerMiningDrill = Ingredient(
    name: "Burner mining drill",
    ingredients: [IronPlate: 3, IronGearWheel: 3, StoneFurnace: 1],
    craftingTime: 2,
    outputAmount: 1
  )
  public static let ElectricMiningDrill = Ingredient(
    name: "Electric mining drill",
    ingredients: [IronPlate: 10, IronGearWheel: 5, ElectronicCircuit: 3],
    craftingTime: 2,
    outputAmount: 1
  )
  public static let OffshorePump = Ingredient(
    name: "Offshore pump",
    ingredients: [IronGearWheel: 1, ElectronicCircuit: 2, Pipe: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let StoneFurnace = Ingredient(
    name: "Stone furnace",
    ingredients: [Stone: 5],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let SteelFurnace = Ingredient(
    name: "Steel furnace",
    ingredients: [SteelPlate: 6, StoneBrick: 10],
    craftingTime: 3,
    outputAmount: 1
  )
  public static let AssemblingMachine1 = Ingredient(
    name: "Assembling machine 1",
    ingredients: [IronPlate: 9, IronGearWheel: 5, ElectronicCircuit: 3],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let AssemblingMachine2 = Ingredient(
    name: "Assembling machine 2",
    ingredients: [SteelPlate: 2, IronGearWheel: 5, ElectronicCircuit: 3, AssemblingMachine1: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let Lab = Ingredient(
    name: "Lab",
    ingredients: [IronGearWheel: 10, ElectronicCircuit: 10, TransportBelt: 4],
    craftingTime: 2,
    outputAmount: 1
  )
}

/// INTERMEDIATE PRODUCTS
extension Ingredient {
  public static let CopperCable = Ingredient(
    name: "Copper cable",
    ingredients: [CopperPlate: 1],
    craftingTime: 0.5,
    outputAmount: 2
  )
  public static let IronStick = Ingredient(
    name: "Iron stick",
    ingredients: [IronPlate: 1],
    craftingTime: 0.5,
    outputAmount: 2
  )
  public static let IronGearWheel = Ingredient(
    name: "Iron gear wheel",
    ingredients: [IronPlate: 2],
    craftingTime: 0.5,
    outputAmount: 1
  )
  public static let ElectronicCircuit = Ingredient(
    name: "Electronic circuit",
    ingredients: [IronPlate: 1, CopperCable: 3],
    craftingTime: 0.5,
    outputAmount: 1
  )

  public static let AutomationSciencePack = Ingredient(
    name: "Automation science pack",
    ingredients: [CopperPlate: 1, IronGearWheel: 1],
    craftingTime: 5,
    outputAmount: 1
  )
  public static let LogisticSciencePack = Ingredient(
    name: "Logistic Science Pack",
    ingredients: [TransportBelt: 1, Inserter: 1],
    craftingTime: 6,
    outputAmount: 1
  )
}

/// COMBAT
extension Ingredient {
  public static let Pistol = Ingredient(
    name: "Pistol",
    ingredients: [IronPlate: 5, CopperPlate: 5],
    craftingTime: 5,
    outputAmount: 1
  )
  public static let SubmachineGun = Ingredient(
    name: "Submachine gun",
    ingredients: [IronPlate: 10, CopperPlate: 5, IronGearWheel: 10],
    craftingTime: 10,
    outputAmount: 1
  )
  public static let Shotgun = Ingredient(
    name: "Shotgun",
    ingredients: [Wood: 5, IronPlate: 15, CopperPlate: 10, IronGearWheel: 5],
    craftingTime: 10,
    outputAmount: 1
  )

  public static let FirearmMagazine = Ingredient(
    name: "Firearm magazine",
    ingredients: [IronPlate: 4],
    craftingTime: 1,
    outputAmount: 1
  )
  public static let ShotgunShells = Ingredient(
    name: "Shotgun shells",
    ingredients: [IronPlate: 2, CopperPlate: 2],
    craftingTime: 3,
    outputAmount: 1
  )

  public static let LightArmor = Ingredient(
    name: "Light armor",
    ingredients: [IronPlate: 40],
    craftingTime: 3,
    outputAmount: 1
  )
  public static let HeavyArmor = Ingredient(
    name: "Heavy armor",
    ingredients: [CopperPlate: 100, SteelPlate: 50],
    craftingTime: 8,
    outputAmount: 1
  )

  public static let Wall = Ingredient(name: "Wall", ingredients: [StoneBrick: 5], craftingTime: 0.5, outputAmount: 1)
  public static let GunTurret = Ingredient(
    name: "Gun turret",
    ingredients: [IronPlate: 20, CopperPlate: 10, IronGearWheel: 10],
    craftingTime: 8,
    outputAmount: 1
  )
  public static let Radar = Ingredient(
    name: "Radar",
    ingredients: [IronPlate: 10, IronGearWheel: 5, ElectronicCircuit: 5],
    craftingTime: 0.5,
    outputAmount: 1
  )
}
