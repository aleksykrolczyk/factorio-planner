public struct Ingredient: Hashable {
  let name: String
  let ingredients: [Ingredient: Int]
  let craftingTime: Float
  let outputAmount: Int

  var isBasic: Bool { return ingredients.isEmpty }
}
