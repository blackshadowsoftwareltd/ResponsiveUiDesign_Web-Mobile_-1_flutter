import 'package:flutter/material.dart';
import 'package:responsive_web/Components/FeaturePanel/FeaturesMenu.dart';
import 'package:responsive_web/Components/FeaturePanel/FeaturesPreview.dart';
import 'package:responsive_web/Reusable_Components/texts.dart';
import 'package:responsive_web/Services/PlatformServices.dart';

class Features extends StatelessWidget {
  double _width;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      featureTitle(),
      PlatFormServices.isMobile(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FeaturesMenu(),
                Container(
                    height: 5,
                    width: _width,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    color: Colors.grey[300]),
                FeaturesPreview()
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Expanded(flex: 1, child: FeaturesMenu()),
                  Container(width: 5, height: 300, color: Colors.grey[300]),
                  Expanded(flex: 1, child: FeaturesPreview())
                ])
    ]));
  }

  Widget featureTitle() => Container(
      margin: EdgeInsets.symmetric(vertical: 25, horizontal: _width / 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        boldBlackText('Heading Feature title goes here'),
        SizedBox(height: 10),
        normalBlackText(
            'Duis bibendum diam non erat facilaisis tincidunt. Fusce leo neque, Fusce leo neque, lacinia at tempor vitage, potta at arcu. Vestibulum varius non dui at pulvinar. Ut egestas orci in quam sollicitudin aliquet.')
      ]));
}
