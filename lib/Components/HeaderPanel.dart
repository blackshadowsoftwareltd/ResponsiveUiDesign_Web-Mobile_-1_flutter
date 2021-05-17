import 'package:flutter/material.dart';
import 'package:responsive_web/Reusable_Components/texts.dart';
import 'package:responsive_web/Services/PlatformServices.dart';

class HeaderPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: PlatFormServices.isMobile(context) ? 60 : 100,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: PlatFormServices.isMobile(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(flex: 2),
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      height: 35,
                      child: Image.asset('assets/images/vertical_logo.png')),
                  Spacer(flex: 1),
                  InkWell(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: 30,
                        child: Image.asset('assets/icon/menu_icon.png')),
                    onTap: () => Scaffold.of(context).openDrawer(),
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: 150,
                        child: Image.asset('assets/images/vertical_logo.png')),
                    TextButton(onPressed: () {}, child: menuText('Home')),
                    SizedBox(width: 20),
                    TextButton(onPressed: () {}, child: menuText('Features')),
                    SizedBox(width: 20),
                    TextButton(onPressed: () {}, child: menuText('Screenshot')),
                    SizedBox(width: 20),
                    TextButton(onPressed: () {}, child: menuText('Gallery'))
                  ]));
  }
}
