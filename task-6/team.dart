import 'coach.dart';
import 'doctor.dart';
import 'player.dart';

class Team {
  final String title;
  final String city;
  int standing;

  List<Coach> coaches = List.empty();
  List<Doctor> doctors = List.empty();
  List<Player> players = List.empty();

  Team(this.title, this.city, this.standing, List<Coach> coaches,
      List<Doctor> doctors, List<Player> players) {
    this.coaches = coaches;
    this.doctors = doctors;
    this.players = players;
  }

  void winsGame() => standing++;

  void losesGame() => standing--;

  @override
  String toString() {
    final String delim = '\n    ';
    return '''
    Team is ${title} 
    From city ${city}
    Championship standing #${standing}\n
    Team members:\n
    ${coaches.join(delim)}
    ${doctors.join(delim)}
    ${players.join(delim)}
    ''';
  }
}
