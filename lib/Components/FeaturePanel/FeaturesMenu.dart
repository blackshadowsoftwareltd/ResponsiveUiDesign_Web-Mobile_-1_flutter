import 'package:flutter/material.dart';
import 'package:responsive_web/Reusable_Components/texts.dart';

class FeaturesMenu extends StatelessWidget {
  double _width;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.symmetric(horizontal: _width / 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          menuItem('assets/icon/shopping_cart.png', 'Shopping Cart'),
          menuItem('assets/icon/package.png', 'Package'),
          menuItem('assets/icon/gift_packaging.png', 'Gift Package'),
          menuItem('assets/icon/delivery_time.png', '24h Delivery'),
          menuItem('assets/icon/payment_method.png', 'Easy Payment')
        ]));
  }

  Widget menuItem(String imgPath, String text) => ListTile(
      leading: SizedBox(height: 50, child: Image.asset(imgPath)),
      title: menuText(text),
      contentPadding: EdgeInsets.all(5),
      onTap: () {});
}
