enum Countries { brazil, russia, turkish, spain, japan }

class Territory {
  final int areaInHectare;
  final List<String> crops;
  final List<AgriculturalMachinery> machineries;

  Territory(
    this.areaInHectare,
    this.crops,
    this.machineries,
  );
}

class AgriculturalMachinery implements Comparable<AgriculturalMachinery> {
  final String id;
  final DateTime releaseDate;

  AgriculturalMachinery(
    this.id,
    this.releaseDate,
  );

  /// Переопределяем оператор "==", чтобы сравнивать объекты по значению.
  @override
  // ignore: non_nullable_equals_parameter
  bool operator ==(Object? other) {
    return identical(this, other) || (other is AgriculturalMachinery && other.id == id && other.releaseDate == releaseDate);
  }

  @override
  int get hashCode => Object.hashAll([id, releaseDate]);

  @override
  int compareTo(AgriculturalMachinery other) {
    return this.releaseDate.compareTo(other.releaseDate);
  }
}

final mapBefore2010 = <Countries, List<Territory>>{
  Countries.brazil: [
    Territory(
      34,
      ['Кукуруза'],
      [
        AgriculturalMachinery(
          'Трактор Степан',
          DateTime(2001),
        ),
        AgriculturalMachinery(
          'Культиватор Сережа',
          DateTime(2007),
        ),
      ],
    ),
  ],
  Countries.russia: [
    Territory(
      14,
      ['Картофель'],
      [
        AgriculturalMachinery(
          'Трактор Гена',
          DateTime(1993),
        ),
        AgriculturalMachinery(
          'Гранулятор Антон',
          DateTime(2009),
        ),
      ],
    ),
    Territory(
      19,
      ['Лук'],
      [
        AgriculturalMachinery(
          'Трактор Гена',
          DateTime(1993),
        ),
        AgriculturalMachinery(
          'Дробилка Маша',
          DateTime(1990),
        ),
      ],
    ),
  ],
  Countries.turkish: [
    Territory(
      43,
      ['Хмель'],
      [
        AgriculturalMachinery(
          'Комбаин Василий',
          DateTime(1998),
        ),
        AgriculturalMachinery(
          'Сепаратор Марк',
          DateTime(2005),
        ),
      ],
    ),
  ],
};

final mapAfter2010 = {
  Countries.turkish: [
    Territory(
      22,
      ['Чай'],
      [
        AgriculturalMachinery(
          'Каток Кирилл',
          DateTime(2018),
        ),
        AgriculturalMachinery(
          'Комбаин Василий',
          DateTime(1998),
        ),
      ],
    ),
  ],
  Countries.japan: [
    Territory(
      3,
      ['Рис'],
      [
        AgriculturalMachinery(
          'Гидравлический молот Лена',
          DateTime(2014),
        ),
      ],
    ),
  ],
  Countries.spain: [
    Territory(
      29,
      ['Арбузы'],
      [
        AgriculturalMachinery(
          'Мини-погрузчик Максим',
          DateTime(2011),
        ),
      ],
    ),
    Territory(
      11,
      ['Табак'],
      [
        AgriculturalMachinery(
          'Окучник Саша',
          DateTime(2010),
        ),
      ],
    ),
  ],
};

void main() {
  final List<AgriculturalMachinery> machineries = {...getMachinaries(mapBefore2010), ...getMachinaries(mapAfter2010)}.toList();

  print('Cредний возраст всей техники на всех угодьях: ${getMediumAge(machineries)} дней');
  print('Cредний возраст старой техники: ${getMediumAgeOfEldestHalf(machineries)} дней');
}

Set<AgriculturalMachinery> getMachinaries(Map<Countries, List<Territory>> inMap) {
  return inMap.entries
      .map((entry) => entry.value)
      .expand((territories) => territories)
      .map((territory) => territory.machineries)
      .expand((machineries) => machineries)
      .toSet();
}

int getMediumAge(List<AgriculturalMachinery> machineries) {
  int days = 0;
  for (final AgriculturalMachinery el in machineries) days += DateTime.now().difference(el.releaseDate).inDays;
  return (days / machineries.length).truncate();
}

int getMediumAgeOfEldestHalf(List<AgriculturalMachinery> machineries) {
  int eldestLength = (machineries.length / 2).truncate();
  machineries.sort();
  return (machineries.getRange(0, eldestLength).fold(0, (prev, el) => prev + DateTime.now().difference(el.releaseDate).inDays) / eldestLength).truncate();
}
