Map<Symbol, dynamic> symbolizeKeys(Map<String, dynamic> map) {
  return map.map((k, v) => MapEntry(Symbol(k), v));
}
