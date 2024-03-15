import 'person.dart';
import 'team_member.dart';

class Doctor extends Person implements ITeamMember {
  Doctor(Person person, String specialization, int salary)
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
    return '''Doctor with specialization: ${specialization}
    Salary is ${salary}
    ${super.toString()}
    ''';
  }
}
