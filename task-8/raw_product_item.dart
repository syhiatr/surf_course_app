class RawProductItem {
  late final String name;
  late final String categoryName;
  late final String subcategoryName;
  late final DateTime expirationDate;
  late final int qty;

  RawProductItem({
    required name,
    required categoryName,
    required subcategoryName,
    required expirationDate,
    required qty,
  }) {
    this.name = name;
    this.categoryName = categoryName;
    this.subcategoryName = subcategoryName;
    this.expirationDate = expirationDate;
    this.qty = qty;
  }
}
