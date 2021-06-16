import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePict extends StatelessWidget {
  const ProfilePict({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/image/sample1.jpg"),
          ),
          Positioned(
              right: -5,
              bottom: 0,
              child: SizedBox(
                height: 36,
                width: 36,
                child: FlatButton(
                  child: SvgPicture.asset("assets/icons/Call.svg"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  color: HexColor("#0a31a8"),
                  onPressed: () {},
                ),
              ))
        ],
      ),
    );
  }
}
