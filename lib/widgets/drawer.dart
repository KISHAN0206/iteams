// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
         color: Colors.deepPurple,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  
                  accountName: Text("KISHAN AKBARI"),
                  accountEmail: Text("kishanakbari977@gmail.com"),
                  currentAccountPicture: CircleAvatar(backgroundImage:AssetImage("assets/13.jpeg"),)
                ),
              ),
              ListTile(
                
                leading: Icon(CupertinoIcons.home),
                title: Text("Home",textScaleFactor: 1.2,),
                textColor: Colors.white,
                iconColor: Colors.white,
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled),
                title: Text("Profile",textScaleFactor: 1.2,),
                textColor: Colors.white,
                iconColor: Colors.white,
              ),
              ListTile(
                leading: Icon(CupertinoIcons.mail),
                title: Text("Mail me",textScaleFactor: 1.2,),
                textColor: Colors.white,
                iconColor: Colors.white,
              )
            ],
            
          )
          ),
    );
  }
}
