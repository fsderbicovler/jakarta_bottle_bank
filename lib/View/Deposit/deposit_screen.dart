import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/View/Components/coustom_bottom_nav_bar.dart';
import 'package:jakarta_bottle_bank/View/Deposit/components/deposit_body.dart';
import 'package:jakarta_bottle_bank/enums.dart';

class DepositScreen extends StatelessWidget {
  static String routeName = "/depositscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DepositBody(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: HexColor("#dbf4ff"),
      title: Column(
        children: [
          Text(
            "Deposit Now!",
            style: TextStyle(
                color: HexColor("#c85320"),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          // Text(
          //   "${collectorlist.length} Collector(s)",
          //   style: TextStyle(
          //     color: HexColor("#c85320"),
          //     fontSize: 11,
          //   ),
        ],
      ),
    );
  }
}
