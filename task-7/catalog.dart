import 'article.dart';

class Catalog {
  List<Article> articles = [];

  Catalog(String list) {
    list.split('\n').forEach((line) {
      if (line.length > 0) articles.add(Article.parse(line));
    });
  }

  List<Article> byCategory(String category) => articles.where((a) => a.category == category).toList();
}
