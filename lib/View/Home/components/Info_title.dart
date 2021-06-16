import 'package:flutter/material.dart';

class InfoTitle extends StatelessWidget {
  final String title;
  final GestureTapCallback press;

  const InfoTitle({Key key, @required this.title, @required this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.orange,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            "See More",
            style: TextStyle(color: Colors.orange),
          ),
        ),
      ],
    );
  }
}
