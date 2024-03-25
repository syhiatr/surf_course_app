import 'article_filter.dart';
import 'article.dart';

class FilterCategory implements IArticleFilter {
  final String category;

  FilterCategory(this.category);

  @override
  bool applyFilter(Article a) {
    return a.category == category;
  }
}
