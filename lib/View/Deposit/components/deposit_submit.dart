import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DepositSubmit extends StatelessWidget {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(color: HexColor("#c85320")),
              children: [
                TextSpan(
                  text: "Total plastic you earn\n",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "plastic type : PTE \n",
                  style: TextStyle(
                      fontSize: 14,
                      // fontStyle: FontStyle.italic,
                      decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "weight : 10kg \n",
                  style:
                      TextStyle(fontSize: 14, decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "[Price per kg ] x [weight] \n",
                  style:
                      TextStyle(fontSize: 15, decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "Total plastic earning is ",
                  style:
                      TextStyle(fontSize: 16, decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "Rp. 10,000 \n",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          DepositButton(),
        ],
      ),
    );
  }
}

class DepositButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(10.0),
      color: HexColor("#c85320"),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        minWidth: 100.0,
        // height: 10,
        child: Text(
          "Deposit",
          textAlign: TextAlign.center, //text will be at the centre
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, HomeScreen.routeName);
        },
      ),
    );
  }
}
