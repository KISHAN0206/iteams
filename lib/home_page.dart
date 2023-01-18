// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:convert';

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:pro/catalog/catalog.dart';
import 'package:pro/widgets/item_widget.dart';
import 'widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    catalogmodel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Container(
          color: Color.fromARGB(255, 153, 134, 187),
          child: (catalogmodel.items != null && catalogmodel.items.isNotEmpty)
              ? ListView.builder(
                  itemCount: catalogmodel.items.length,
                  itemBuilder: (context, index) => ItemWidget(
                    item: catalogmodel.items[index],
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: MyDrawer(),
    );
  }
}
