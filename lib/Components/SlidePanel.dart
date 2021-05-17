import 'package:flutter/material.dart';
import 'package:responsive_web/Reusable_Components/button.dart';
import 'package:responsive_web/Reusable_Components/texts.dart';
import 'package:responsive_web/Services/PlatformServices.dart';

class SlidePanel extends StatelessWidget {
  /// dummy text
  String _text =
      'Donec elementum mollis magna id aliquet.\nEtiam eleifend urna eget sem sagittis feugiat.\nPellentesque habitant morbi tristique senectus et netus\net malesuada fames ac turpis egestas.';

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
        width: _width,
        color: Colors.green,
        child: Stack(children: [
          Image.asset('assets/images/slide_back.png', fit: BoxFit.fitWidth),
          Positioned(
              left: _width / 2,
              bottom: 0,
              right: _width / 5,
              child: Image.asset('assets/images/hand_phone.png',
                  fit: BoxFit.cover)),
          Positioned(
              bottom: PlatFormServices.isMobile(context) ? 10 : _width / 20,
              left: PlatFormServices.isMobile(context) ? 10 : _width / 5,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    boldWhiteText('Perfect app landing page'),
                    normalWhiteText(_text),
                    TransparentButtons(
                        text: 'DOWNLOAD',
                        width: PlatFormServices.isMobile(context)
                            ? _width + 300
                            : _width)
                  ]))
        ]));
  }
}
