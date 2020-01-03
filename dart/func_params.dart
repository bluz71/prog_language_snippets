String params(String a, String b, [String c = "d"]) {
  if (c == null) {
    return a + b;
  } else {
    return a + b + c;
  }
}

main() {
  print(params("a", "b", "c"));
  print(params("a", "b"));
}
