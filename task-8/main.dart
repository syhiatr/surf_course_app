import 'backend.dart';
import 'raw_product_item.dart';

main() {
  Map<String, Map<String, List<String>>> catalog = {};

  List<RawProductItem> sixShopFiltered = Backend
                                          .getRawProductItems()
                                          .where((item) => item.qty > 0)
                                          .where((item) => !item.expirationDate.isBefore(DateTime.now())).toList();

  for (var item in sixShopFiltered) {
    if (!catalog.containsKey(item.categoryName)) catalog[item.categoryName] = {};
    if (!catalog[item.categoryName]!.containsKey(item.subcategoryName)) catalog[item.categoryName]![item.subcategoryName] = [];
    catalog[item.categoryName]![item.subcategoryName]!.add(item.name);
  }

  print(catalog);
}
