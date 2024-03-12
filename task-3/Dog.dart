import 'Animal.dart';
import 'IAnimal.dart';

class Dog extends Animal implements IAnimal {
  static const String _sound = 'Gav, gav!';

  Dog({required super.area, required super.color, required super.kilos});

  @override
  String sound() => Dog._sound;

  @override
  String toString() =>  'I\'m a DOG!\n' + super.toString();
}
