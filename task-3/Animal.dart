class Animal {
  final String area;
  final String color;
  late final int _weight;
  DateTime? birthday;
  String? name;
  bool? _readyForMars;

  String get age => birthday != null ? (DateTime.now().year - birthday!.year).toString() : 'unknown';

  set weight(int weight) {
    this._weight = weight;
    this._readyForMars = weight < 100;
  }

  int get weight => _weight;

  Animal({required this.area, required this.color, kilos}) {
    weight = kilos;
  }

  @override
  String toString() {
    return '''
      Habitat: $area
      Age: $age
      Color: $color
      Nickname: ${name ?? 'unknown'}
      Weight: $weight kilos 
      Ready for Mars: ${_readyForMars! ? 'yes' : 'no, too heavy'}

    ''';
  }

  String sound() => '';
}
