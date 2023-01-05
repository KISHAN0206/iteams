// ignore_for_file: prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:pro/catalog/catalog.dart';
import 'package:pro/widgets/item_widget.dart';
import 'widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => catalogmodel.item[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Container(
        color: Color.fromARGB(255, 153, 134, 187),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child:ItemWidget(
                    item: dummyList[index],
                  ),
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
