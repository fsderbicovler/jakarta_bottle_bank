import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/View/Management/manage_screen.dart';
import 'package:jakarta_bottle_bank/View/Profile/profile_screen.dart';
import 'package:jakarta_bottle_bank/View/home/home_screen.dart';

import '../../constants.dart';
import '../../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset("assets/icons/receipt.svg"),
                iconSize: 10,
                onPressed: () =>
                    Navigator.pushNamed(context, ManagementScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: HexColor("#c85320"),
                  // color: MenuState.home == selectedMenu
                  //     ? kPrimaryColor
                  //     : inActiveIconColor,
                ),
                iconSize: 10,
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),

              // IconButton(
              //   icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
              //   onPressed: () {},
              // ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Lock.svg",
                  color: HexColor("#c85320"),
                  // color: MenuState.profile == selectedMenu
                  //     ? kPrimaryColor
                  //     : inActiveIconColor,
                ),
                iconSize: 30,
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
