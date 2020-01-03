doPrint(int element) {
  print('- ' + element.toString());
}

void main() {
  [1, 2, 3].forEach(doPrint);
  [4, 5, 5].forEach((item) => print('- ' + item.toString()));
  for (var i in [1, 2, 3]) {
    print('* ' + i.toString());
  }
}
