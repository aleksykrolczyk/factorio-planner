// The Swift Programming Language
// https://docs.swift.org/swift-book

let planner = Planner(ingredient: .LogisticSciencePack, productionPerSecond: 1, assembler: .mk1)
let plan = planner.plan()

plan.summary()

print("\nBasic ingredients:")
let basicIngredients = plan.basicIngredients
for (ingredient, amount) in basicIngredients {
  print("\(ingredient.name): \(amount)/s")
}
