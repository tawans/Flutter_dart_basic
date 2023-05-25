void main() {
  int korea = 10;
  int english = 50;
  int math = 100;
  int science = 100;

  List<int> subjects = [10, 50, 100, 100];

  int sum = korea + english + math + science;

  for (int i = 0; i < subjects.length; i++) {
    sum += subjects[i];
  }

  subjects.forEach((e) {
    print(e);
  });

  double average = sum / 4;

  print(sum);
  print(average);

  Set<int> lottoSet = {1, 2, 3, 4};

  // ...문법

  Map<String, int> names = {'age': 10};
}
