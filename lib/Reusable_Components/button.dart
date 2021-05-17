import 'package:flutter/material.dart';

class TransparentButtons extends StatelessWidget {
  final String text;
  final double width;

  const TransparentButtons({Key key, @required this.text, @required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: width / 100),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
                color: Colors.white.withOpacity(.5), width: width / 500)),
        alignment: Alignment.center,
        child: Text(text,
            style: TextStyle(color: Colors.white, fontSize: width / 60)));
  }
}
