class Person {
  final String name;
  final String nationality;
  final int age;

  const Person(this.name, this.nationality, this.age);

  @override
  String toString() {
    return '''Name: ${name}
    Nationality: ${nationality}
    Age: ${age}
    ''';
  }
}
