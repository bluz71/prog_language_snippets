doMaps() {
  var maps = {1: 'helium', 2: 'neon'};
  maps[3] = 'radeon';
  print(maps);
  print('maps length: ${maps.length}');
}

main() {
  doMaps();
}
