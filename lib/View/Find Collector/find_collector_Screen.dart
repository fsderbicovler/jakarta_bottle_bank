import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/Model/collector_location.dart';
import 'package:jakarta_bottle_bank/View/Components/coustom_bottom_nav_bar.dart';
import 'package:jakarta_bottle_bank/View/Find%20Collector/components/collector_list_body.dart';
import 'package:jakarta_bottle_bank/enums.dart';

class FindCollector extends StatelessWidget {
  static String routeName = "/findcollector";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CollectorListBody(),
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
            "Deposit Location",
            style: TextStyle(
                color: HexColor("#c85320"),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "${locationlist.length} Location(s)",
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
