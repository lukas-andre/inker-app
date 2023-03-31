import 'dart:math';

int random(min, max) {
  return min + Random().nextInt(max - min);
}

int inkerRandom() {
  return 10000 + Random().nextInt(100000 - 10000);
}
