class Person {
  String name;

  Person(this.name);
}

void main() {
  List<Person> personList = [
    Person('홍길동'),
    Person('한석봉'),
  ];

  for (var person in personList) {
    print(person.name);
  }

  Map<String, int> personAges = {
    '홍길동': 20,
    '한석봉': 25,
  };

  personAges.entries.forEach((e) {
    print('${e.key}의 나이는 ${e.value}살');
  });
}
