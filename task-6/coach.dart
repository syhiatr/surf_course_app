import 'person.dart';
import 'team_member.dart';

class Coach extends Person implements ITeamMember {
  Coach(Person person, String specialization, int salary)
      : super(person.name, person.nationality, person.age) {
    this.specialization = specialization;
    this.salary = salary;
  }

  @override
  late int salary;

  @override
  late String specialization;

  @override
  String toString() {
    return '''Coach with specialization: ${specialization}
    Salary info is confidential
    ${super.toString()}
''';
  }
}
