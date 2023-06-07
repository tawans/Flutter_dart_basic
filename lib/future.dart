void main() {
  final Future delay = Future.delayed(Duration(seconds: 1), () {
    print("5초 끝");
  });
}
