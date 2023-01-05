// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:pro/home_page.dart';
import 'package:pro/routes/route.dart';
import 'package:pro/widgets/mytheme.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: MyTheme.lightTheme(context),
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => HomePage(),
          MyRoutes.homeRoute: (context) => HomePage()
        });
  }
}
