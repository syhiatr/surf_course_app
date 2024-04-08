import 'backend.dart';
import 'raw_product_item.dart';

main() {
  Map<String, Map<String, List<String>>> catalog = {};

  List<RawProductItem> sixShopFiltered = Backend
                                            .getRawProductItems()
                                            .where((item) => item.qty > 0 && !item.expirationDate.isBefore(DateTime.now()))
                                          .toList();

  for (var item in sixShopFiltered) {
    catalog.putIfAbsent(item.categoryName, () => {});
    catalog[item.categoryName]!.putIfAbsent(item.subcategoryName, () => []);
    catalog[item.categoryName]![item.subcategoryName]!.add(item.name);
  }

  print(catalog);
}
