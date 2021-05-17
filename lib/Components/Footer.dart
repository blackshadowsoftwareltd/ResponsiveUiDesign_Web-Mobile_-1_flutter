import 'package:flutter/material.dart';
import 'package:responsive_web/Reusable_Components/texts.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width,
      height: 200,
      color: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 1),
          boldWhiteText('Say Hi, Get In Touch'),
          Spacer(flex: 2),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                footerIcon('assets/icon/facebook.png', _width / 50),
                footerIcon('assets/icon/twitter.png', _width / 50),
                footerIcon('assets/icon/youtube.png', _width / 50)
              ]),
          Spacer(flex: 1),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  footerButton('Contect'),
                  footerButton('Twitter'),
                  footerButton('Press'),
                  footerButton('Support'),
                  footerButton('Developers'),
                  footerButton('Privacy'),
                ],
              ))
        ],
      ),
    );
  }

  Widget footerIcon(String imgPath, double width) => Container(
      margin: EdgeInsets.all(width - 5),
      width: width + 40,
      child: Image.asset(imgPath));

  Widget footerButton(String text) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
          onPressed: () {},
          child: Text(text, style: TextStyle(color: Colors.white))));
}
