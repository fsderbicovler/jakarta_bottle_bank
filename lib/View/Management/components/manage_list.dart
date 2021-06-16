import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/Model/plastic_deposit.dart';

class ManageList extends StatelessWidget {
  final PlasticDeposit plasticdeposit;
  const ManageList({
    Key key,
    @required this.plasticdeposit,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: HexColor("#ffebb5"),
        // borderRadius: BorderRadius.circular(10),
      ),
      child: Text.rich(
          TextSpan(style: TextStyle(color: HexColor("#c85320")), children: [
        TextSpan(
          text:
              "Bottle type\t\t\t\t\t\t\t:${plasticdeposit.plasticdata.type}\n",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        TextSpan(
          text: "Bottle Brand\t\t\t\t\t:${plasticdeposit.plasticdata.brand}\n",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        TextSpan(
          text:
              "Credit each\t\t\t\t\t\t\t: Rp.${plasticdeposit.plasticdata.perprice}\n",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        TextSpan(
          text:
              "Earned Creadit\t\t: Rp.${plasticdeposit.plasticdata.totalprice}\n",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ])),
    );
  }
}
