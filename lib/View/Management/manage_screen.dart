import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/Model/plastic_deposit.dart';
import 'package:jakarta_bottle_bank/View/Components/coustom_bottom_nav_bar.dart';
import 'package:jakarta_bottle_bank/View/Management/components/manage_body.dart';
import 'package:jakarta_bottle_bank/View/Management/components/manage_list.dart';
import 'package:jakarta_bottle_bank/View/details/components/body.dart';
import 'package:jakarta_bottle_bank/enums.dart';

class ManagementScreen extends StatelessWidget {
  static String routeName = "/manage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ManageBody(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.manage,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: HexColor("#dbf4ff"),
      title: Column(
        children: [
          Text(
            "Deposit Management",
            style: TextStyle(
                color: HexColor("#c85320"),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "${plasticdeposit.length} deposits",
            style: TextStyle(
              color: HexColor("#c85320"),
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
