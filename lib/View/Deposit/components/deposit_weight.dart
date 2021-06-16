import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/View/Deposit/components/weight_input.dart';
import 'package:jakarta_bottle_bank/View/Home/components/icon_botton.dart';
import 'package:jakarta_bottle_bank/size_config.dart';

class DepositWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200, //adjust height
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        color: HexColor("#ffebb5"),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(color: HexColor("#c85320")),
              children: [
                TextSpan(
                  text: "Weight deposit\n",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "Please enter the weight of plastic bottle\n",
                  style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.none),
                ),
                // TextSpan(
                //   text: "[Field in BOX]",
                //   style:
                //       TextStyle(fontSize: 18, decoration: TextDecoration.none),
                // ),
              ],
            ),
          ),
          WeightInput(
            quantity: "Kg",
          ),
          WeightInput(
            quantity: "gr",
          ),
        ],
      ),
    );
  }
}
