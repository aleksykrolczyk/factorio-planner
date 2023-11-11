enum PlanRecord {
  case ingredient(Ingredient, subIngredients: [PlanRecord], assemblerCount: Float)
  case basic(Ingredient, throughput: Float)

  func summary(depth: Int = 0) {
    let indent = String(repeating: " ", count: depth * 4)
    switch self {
    case let .ingredient(ing, subingredients, assemblerCount):
      print("\(indent)\(ing.name): \(assemblerCount) assemblers")
      subingredients.forEach {
        $0.summary(depth: depth + 1)
      }
    case let .basic(ing, throughput):
      print("\(indent)\(ing.name): \(throughput)/s")
    }
  }

  var basicIngredients: [Ingredient: Float] {
    var ingredientsSummary: [Ingredient: Float] = [:]
    switch self {
    case let .ingredient(_, subIngredients, _):
      for ingredient in subIngredients {
        ingredientsSummary.merge(with: ingredient.basicIngredients)
      }
    case let .basic(ing, throughput):
      ingredientsSummary.merge(with: [ing: throughput])
    }
    return ingredientsSummary
  }
}

class Planner {

  let ingredient: Ingredient
  let productionPerSecond: Float
  let assembler: Assembler

  init(ingredient: Ingredient, productionPerSecond: Float, assembler: Assembler) {
    self.ingredient = ingredient
    self.productionPerSecond = productionPerSecond
    self.assembler = assembler
  }

}

extension Planner {

  func plan() -> PlanRecord {
    if ingredient.isBasic { return .basic(ingredient, throughput: productionPerSecond) }

    let craftingTime = ingredient.craftingTime / assembler.craftingSpeed
    let finalAssemblersCount = productionPerSecond * craftingTime / Float(ingredient.outputAmount)

    print("===== Plan for \(productionPerSecond) \(ingredient.name) per second =====")

    let subItems = plan(ingredient: ingredient, assemblersCount: finalAssemblersCount, depth: 0)
    return .ingredient(ingredient, subIngredients: subItems, assemblerCount: finalAssemblersCount)
  }

  private func plan(ingredient: Ingredient, assemblersCount: Float, depth: Int = 0) -> [PlanRecord] {
    var subItems: [PlanRecord] = []
    for (subIngredient, subIngredientAmount) in ingredient.ingredients {
      let requiredSubIngredientPerSecond =
        Float(subIngredientAmount) / ingredient.craftingTime.using(assembler: assembler) * assemblersCount

      if subIngredient.isBasic {
        subItems.append(PlanRecord.basic(subIngredient, throughput: requiredSubIngredientPerSecond))
      } else {

        let subIngredientPerSecond =
          Float(subIngredient.outputAmount) * subIngredient.craftingTime.using(assembler: assembler)
        let assemblersForIngredient = requiredSubIngredientPerSecond / subIngredientPerSecond
        let subIngredients = plan(ingredient: subIngredient, assemblersCount: assemblersForIngredient, depth: depth + 1)
        subItems.append(
          PlanRecord.ingredient(subIngredient, subIngredients: subIngredients, assemblerCount: assemblersForIngredient)
        )

      }
    }
    return subItems
  }

}

extension Float {
  fileprivate func using(assembler: Assembler) -> Float {
    return self / assembler.craftingSpeed
  }
}

extension Dictionary where Key: Hashable, Value: Numeric {
  fileprivate mutating func merge(with other: [Key: Value]) {
    for (key, value) in other {
      self.updateValue((self[key] ?? 0) + value, forKey: key)
    }
  }
}
