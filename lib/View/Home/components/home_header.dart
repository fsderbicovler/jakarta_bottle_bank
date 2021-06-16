import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/View/Profile/profile_screen.dart';
import 'package:jakarta_bottle_bank/View/home/components/icon_botton.dart';
import 'package:jakarta_bottle_bank/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "JAKARTA BOTTLE BANK",
            style: TextStyle(
              fontSize: 20.0,
              color: HexColor("#c85320"),
              fontWeight: FontWeight.bold,
            ),
          ),
          Iconbotton(
            svgsrc: "assets/icons/Camera Icon.svg",
            press: () => Navigator.pushNamed(context, ProfileScreen.routeName),
          ),
        ],
      ),
    );
  }
}
