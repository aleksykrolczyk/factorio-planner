/// BASICS
extension Ingredient {
  public static let CopperPlate = Ingredient(name: "Copper plate", ingredients: [:], craftingTime: 3.2, outputAmount: 1)
  public static let IronPlate = Ingredient(name: "Iron plate", ingredients: [:], craftingTime: 3.2, outputAmount: 1)
  public static let SteelPlate = Ingredient(name: "Steel Plate", ingredients: [:], craftingTime: 16, outputAmount: 1)
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

/// INTERMEDIATE PRODUCTS
extension Ingredient {
  public static let TransportBelt = Ingredient(
    name: "Transport belt",
    ingredients: [IronPlate: 1, IronGearWheel: 1],
    craftingTime: 0.5,
    outputAmount: 2
  )
  public static let Inserter = Ingredient(
    name: "Inserter",
    ingredients: [IronPlate: 1, IronGearWheel: 1, ElectronicCircuit: 1],
    craftingTime: 0.5,
    outputAmount: 1
  )
}
