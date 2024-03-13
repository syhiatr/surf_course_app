import 'Animal.dart';
import 'IAnimal.dart';

class Bear extends Animal implements IAnimal {
  static const String _sound = 'R-r-r-r-r!';

  Bear({required super.area, required super.color, required super.kilos});

  @override
  String sound() => Bear._sound;

  @override
  String toString() => 'I\'m a Bear!\n' + super.toString();
}
