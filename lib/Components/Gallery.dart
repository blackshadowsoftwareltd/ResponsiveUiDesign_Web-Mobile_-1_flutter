import 'package:flutter/material.dart';
import 'package:responsive_web/Reusable_Components/texts.dart';
import 'package:responsive_web/Services/PlatformServices.dart';

class Gallery extends StatelessWidget {
  double _width;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      boldBlackText('Our Latest Screenshots Gallery'),
      SizedBox(height: _width / 50),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: _width / 20),
          child: normalBlackText(
              'Let\'s choose your favorite wallpapers and install now our free App and check out the amazing KTM wallpaper. As a result, This is the best KTM Wallpaper App.')),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            phonePreview(context, 'assets/images/demo1.png'),
            phonePreview(context, 'assets/images/demo2.png'),
            phonePreview(context, 'assets/images/demo4.png'),
            phonePreview(context, 'assets/images/demo6.png'),
            phonePreview(context, 'assets/images/demo7.png')
          ]))
    ]));
  }

  Widget phonePreview(BuildContext context, String imgPath) => Padding(
      padding: EdgeInsets.all(PlatFormServices.isMobile(context) ? 10 : 20),
      child: SizedBox(
          height:
              PlatFormServices.isMobile(context) ? _width / 1.5 : _width / 3,
          child: Image.asset(imgPath, fit: BoxFit.fitHeight)));
}
