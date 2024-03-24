import 'article.dart';

abstract interface class IArticleFilter<T extends Object> {
    bool applyFilter(final Article a);
}