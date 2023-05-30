class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Person && name == other.name && age == other.age;
  }

  @override
  int get hashCode {
    return name.hashCode ^ age.hashCode;
  }
}

class NoOverridePerson {
  String name;
  int age;

  NoOverridePerson(this.name, this.age);
}

void main() {
  var noOverridePerson1 = NoOverridePerson('Alice', 25);
  var noOverridePerson2 = NoOverridePerson('Alice', 25);

  print(noOverridePerson1 == noOverridePerson2); // false

  var person1 = Person('Alice', 25);
  var person2 = Person('Alice', 25);
  print(person1 == person2); // true
}
