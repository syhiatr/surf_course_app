import 'catalog.dart';
import 'filter_category.dart';
import 'filter_price.dart';
import 'filter_amount.dart';

main() {
  final articles = '''
1,хлеб,Бородинский,500,5
2,хлеб,Белый,200,15
3,молоко,Полосатый кот,50,53
4,молоко,Коровка,50,53
5,вода,Апельсин,25,100
6,вода,Бородинский,500,5
''';

  final catalog = Catalog(articles);

  final water = FilterCategory('вода');
  print('Water in catalog:\n${catalog.articles.where(water.applyFilter).join('\n')}\n');

  final priceLessOrEqual50 = FilterPrice(50);
  print('Price less or equal 50:\n${catalog.articles.where(priceLessOrEqual50.applyFilter).join('\n')})\n');

  final amountLess20 = FilterAmount(20);
  print('Amount less than 20:\n${catalog.articles.where(amountLess20.applyFilter).join('\n')})\n');
}
