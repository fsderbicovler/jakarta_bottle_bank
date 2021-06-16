import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/Model/users_data.dart';

class ProfileMini extends StatelessWidget {
  UserData userlist;
  ProfileMini({
    Key key,
    @required this.userlist,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: HexColor("#ffebb5"), borderRadius: BorderRadius.circular(5)),
      child: Text.rich(TextSpan(
          style: TextStyle(
            color: HexColor("#c85320"),
          ),
          children: [
            TextSpan(
              text: "${userlist.user_name}\n",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
                text: "Personal Collector\n",
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                )),
            TextSpan(
                text: "${userlist.user_email}\n",
                style: TextStyle(
                  fontSize: 15,
                  // fontStyle: FontStyle.italic,
                )),
            TextSpan(
              text: "${userlist.address}",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ])),
    );
  }
}
