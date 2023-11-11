public enum Assembler {
  case mk1, mk2, mk3

  var craftingSpeed: Float {
    switch self {
    case .mk1: return 0.5
    case .mk2: return 0.75
    case .mk3: return 1.25
    }
  }

}
