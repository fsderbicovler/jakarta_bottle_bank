import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/View/Components/coustom_bottom_nav_bar.dart';
import 'package:jakarta_bottle_bank/View/Profile/components/profile_body.dart';
import 'package:jakarta_bottle_bank/enums.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#dbf4ff"),
      // appBar: AppBar(
      //   title: Text("Profile"),
      // ),
      body: ProfileBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
