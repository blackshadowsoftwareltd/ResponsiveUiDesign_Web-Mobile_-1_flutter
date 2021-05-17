import 'package:flutter/material.dart';
import 'package:responsive_web/Components/DrawerMenu.dart';
import 'package:responsive_web/Components/FeaturePanel/Features.dart';
import 'package:responsive_web/Components/Footer.dart';
import 'package:responsive_web/Components/Gallery.dart';
import 'package:responsive_web/Components/HeaderPanel.dart';
import 'package:responsive_web/Components/ProductFeature.dart';
import 'package:responsive_web/Components/SlidePanel.dart';
import 'package:responsive_web/Services/PlatformServices.dart';

/// Our Main Screen or Home
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        drawerEnableOpenDragGesture:
            PlatFormServices.isMobile(context) ? true : false,
        body: SafeArea(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeaderPanel(),
                      SlidePanel(),
                      Features(),
                      ProductFeature(),
                      Gallery(),
                      Footer()
                    ]))));
  }
}
