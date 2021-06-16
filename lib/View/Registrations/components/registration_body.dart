import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/View/Home/home_screen.dart';
import 'package:jakarta_bottle_bank/View/Registrations/components/persona_address.dart';
import 'package:jakarta_bottle_bank/View/Registrations/components/personal_contact.dart';
import 'package:jakarta_bottle_bank/View/Registrations/components/personal_info.dart';

class RegistrationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Join us in recycling",
                style: TextStyle(
                    fontSize: 25,
                    color: HexColor("#c85320"),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Register your personal detail below",
                style: TextStyle(
                    fontSize: 17,
                    color: HexColor("#c85320"),
                    fontWeight: FontWeight.bold),
              ),
            ),
            PersonalInfo(),
            PersonalContact(),
            PersonalAddress(),
            Material(
                elevation: 2.0,
                borderRadius: BorderRadius.circular(10.0),
                color: HexColor("#c85320"),
                child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  minWidth: 200.0,
                  height: 30,
                  child: Text(
                    "L O G I N",
                    textAlign: TextAlign.center, //text will be at the centre
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
