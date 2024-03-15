class PokerPlayer {
  /// Список текущих карт в руке у игрока
  List<String> _currentHand = ['King of clubs', 'Nine of hearts'];

  /// Субъективная оценка выигрыша
  double _surenessInWin = 0;

  /// Вычислить шансы на выигрыш
  void calculateProbabilities(List<String> cardOnDesk, Strategy strategy) => _surenessInWin = strategy(cardOnDesk, _currentHand);
}

typedef Strategy = double Function(List<String>, List<String>);

void main() {
  final opponent = PokerPlayer();

  final Strategy fakeStrategy = (p0, p1) {
    print('Cards on desk ${p0}');
    print('Current hand ${p1}');
    return 0;
  };

  opponent.calculateProbabilities(['Nine of diamonds', 'King of hearts'], fakeStrategy);
}
