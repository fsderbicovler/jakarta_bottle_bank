import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor_web.dart';

class PersonalAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250, //adjust height
      margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        color: HexColor("#ffebb5"),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Personal Address",
            style: TextStyle(
                fontSize: 18,
                color: HexColor("#c85320"),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            style: TextStyle(color: HexColor("#c85320")),
            decoration: InputDecoration(
              filled: true,
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintText: "Full address",
              hintStyle: TextStyle(
                color: HexColor("#c85320"),
                fontSize: 14.0,
              ),
              // labelText: "Email Address",
              // labelStyle: TextStyle(
              //     color: HexColor("#c93c00"),
              //     fontSize: 20.0,
              //     fontWeight: FontWeight.bold),
              fillColor: HexColor("#fceee8"),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Colors.orange)),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            style: TextStyle(color: HexColor("#c85320")),
            decoration: InputDecoration(
              filled: true,
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintText: "Area",
              hintStyle: TextStyle(
                color: HexColor("#c93c00"),
                fontSize: 14.0,
              ),
              // labelText: "Email Address",
              // labelStyle: TextStyle(
              //     color: HexColor("#c93c00"),
              //     fontSize: 20.0,
              //     fontWeight: FontWeight.bold),
              fillColor: HexColor("#fceee8"),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Colors.orange)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            style: TextStyle(color: HexColor("#c85320")),
            decoration: InputDecoration(
              filled: true,
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintText: "Postcode",
              hintStyle: TextStyle(
                color: HexColor("#c93c00"),
                fontSize: 14.0,
              ),
              // labelText: "Email Address",
              // labelStyle: TextStyle(
              //     color: HexColor("#c93c00"),
              //     fontSize: 20.0,
              //     fontWeight: FontWeight.bold),
              fillColor: HexColor("#fceee8"),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Colors.orange)),
            ),
          ),
        ],
      ),
    );
  }
}
