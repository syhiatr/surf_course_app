import 'Person.dart';
import 'Doctor.dart';
import 'Coach.dart';
import 'Team.dart';
import 'Player.dart';

main() {
  List<Team> teams = initTeams();

  print(teams.join());
}

List<Team> initTeams() {
  Team team1 = Team('Bulls', 'Manchester', 3, [
    Coach(Person('John', 'irishman', 55), 'strategy', 10000),
    Coach(Person('Joshua', 'englishman', 42), 'goalkeepers', 9000),
  ], [
    Doctor(Person('Lee', 'chinese', 70), 'therapist', 6000),
    Doctor(Person('Helen', 'german', 44), 'massager', 6000),
  ], [
    Player(Person('Boris', 'englishman', 25), 'defender', 8000),
    Player(Person('Gaston', 'french', 28), 'winger', 7500),
    Player(Person('Paul', 'american', 23), 'attacker', 8500),
  ]);

  return [team1];
}
