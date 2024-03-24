import 'article_filter.dart';
import 'article.dart';

class FilterAmount implements IArticleFilter {
  final int amount;

  FilterAmount(this.amount);

  @override
  bool applyFilter(Article a) {
    return a.amount < amount;
  }
}
