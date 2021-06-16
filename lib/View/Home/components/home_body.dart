import 'package:flutter/material.dart';
import 'package:jakarta_bottle_bank/Model/users_data.dart';
import 'package:jakarta_bottle_bank/View/Home/components/home_banner.dart';
import 'package:jakarta_bottle_bank/View/home/components/home_header.dart';
import 'package:jakarta_bottle_bank/View/home/components/home_information.dart';
import 'package:jakarta_bottle_bank/View/home/components/home_menu.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //sized box
            HomeHeader(),
            SizedBox(
              height: 20,
            ),
            HomeBanner(userlist: userlist[1]),
            HomeMenu(),
            HomeInfo(),
          ],
        ),
      ),
    );
  }
}
