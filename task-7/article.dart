class Article {
  late final int id;
  late final String category;
  late final String name;
  late final int price;
  late final int amount;

  Article(this.id, this.category, this.name, this.price, this.amount);

  Article.parse(String line) {
    List properties = line.split(',');

    this.id = int.parse(properties[0]);
    this.category = properties[1];
    this.name = properties[2];
    this.price = int.parse(properties[3]);
    this.amount = int.parse(properties[4]);
  }

  @override
  String toString() {
    return '${id}\t${category}\t${name}\t${price} рублей\t${amount} шт';
  }
}
