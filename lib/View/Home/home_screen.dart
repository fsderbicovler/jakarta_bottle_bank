import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/View/Components/coustom_bottom_nav_bar.dart';
import 'package:jakarta_bottle_bank/View/home/components/home_body.dart';
import 'package:jakarta_bottle_bank/View/home/components/home_header.dart';

import '../../enums.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#dbf4ff"),
      // appBar: HomeHeader(),
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
