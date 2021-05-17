import 'package:flutter/material.dart';
import 'package:responsive_web/Reusable_Components/texts.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          Container(
              margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
              width: 150,
              color: Colors.white,
              child: Image.asset('assets/images/horizontal_logo.png')),
          Divider(height: 5, thickness: 2, color: Colors.grey[500]),
          ListTile(title: mediumBlackText('Home'), onTap: () {}),
          ListTile(title: mediumBlackText('Features'), onTap: () {}),
          ListTile(title: mediumBlackText('Screenshot'), onTap: () {}),
          ListTile(title: mediumBlackText('Gallery'), onTap: () {}),
        ])));
  }
}
