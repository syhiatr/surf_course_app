import 'person.dart';
import 'team_member.dart';

class Player extends Person implements ITeamMember {
  late int goals = 0;

  Player(Person person, String specialization, int salary)
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
    return '''Player with specialization: ${specialization}
    Salary is ${salary}
    ${super.toString()}
    ''';
  }

  void scoreGoal() => goals++;
}
