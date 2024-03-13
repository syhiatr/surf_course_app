import 'Bear.dart';
import 'Dog.dart';
import 'Animal.dart';

main() {
  final List<Animal> band = initBand();
  showBand(band);
  listenBand(band);
}

List<Animal> initBand() {
  final Dog dog1 = Dog(area: 'home', color: 'black', kilos: 30);
  dog1.birthday = DateTime(2017, 9, 7);

  final Dog dog2 = Dog(area: 'street', color: 'mixed', kilos: 3);
  dog2.name = 'Klop';

  final Bear bear1 = Bear(area: 'north', color: 'white', kilos: 150);

  final Bear bear2 = Bear(area: 'year 1980', color: 'olympic', kilos: 5);
  bear2.birthday = DateTime(1980, 7, 19);

  return <Animal>[dog1, bear1, dog2, bear2];
}

void showBand(final List<Animal> band) => print('\n    ${band.join()}');

void listenBand(final List<Animal> band) {
  print('    Our song:');

  band.forEach((Animal el) {
    print('\t${el.sound()}');
  });

  print('\n');
}
