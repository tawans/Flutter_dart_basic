class Mineral {
  int amount = 1000000;

  void draw() {
    if (amount < 50000) {
      print('많아 보이는 미네랄');
    } else if (amount < 30000) {
      print('조금 많아보이는 미네랄');
    }
  }
}
