import 'package:flutter/cupertino.dart';

class catalogmodel {
  static final item = [
    Item(
        1,
        "S22 Ultra",
        "Samsung Galaxy S22 ultra 1 TB",
        "https://images.samsung.com/is/image/samsung/p6pim/levant/2202/gallery/levant-galaxy-s22-ultra-s908-413037-sm-s908ezkgmea-530970280",
        10000),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String image;
  final num price;

  Item(this.id, this.name, this.desc, this.image, this.price);
}
