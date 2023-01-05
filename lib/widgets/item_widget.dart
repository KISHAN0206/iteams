import 'package:flutter/material.dart';
import 'package:pro/catalog/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.green)),
      shadowColor: Colors.amber,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.green)),
        tileColor: Color.fromARGB(255, 252, 250, 255),
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),
          textScaleFactor: 1.2,
        ),
      ),
    );
  }
}
