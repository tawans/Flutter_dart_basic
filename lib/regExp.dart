void main() {
  final string = 'HELLO';

  // 정규식 패턴 pattern <- 정규식
  print(string.replaceAll('LL', 'XX'));
  print(string);

  RegExp regExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
}
