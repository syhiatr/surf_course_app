import 'article_filter.dart';
import 'article.dart';

class FilterPrice implements IArticleFilter {
  final int price;

  FilterPrice(this.price);

  @override
  bool applyFilter(Article a) {
    return a.price <= price;
  }
}
