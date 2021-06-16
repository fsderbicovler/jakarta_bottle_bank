import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/View/Home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/loginscreen";
  @override
  Widget build(BuildContext context) {
    final emailfield = TextField(
      style: TextStyle(color: Colors.blue),
      decoration: InputDecoration(
        // suffixIcon: IconButton(
        //   onPressed: () {},
        //   // icon: Icon(Icons.access_alarm),
        // ),
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(15, 20, 15, 20),
        // hintText: "Email Address",
        // hintStyle: TextStyle(color: Colors.orange),
        labelText: "Email Address",
        labelStyle: TextStyle(
            color: HexColor("#c93c00"),
            fontSize: 15.0,
            fontWeight: FontWeight.bold),
        fillColor: HexColor("#fceee8"),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.orange)),
      ),
    );

    final passfield = TextField(
      obscureText: true,
      style: TextStyle(color: Colors.blue),
      decoration: InputDecoration(
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(15, 20, 15, 20),
        // hintText: "Password",
        // hintStyle: TextStyle(color: Colors.orange),
        labelText: "Password",
        labelStyle: TextStyle(
            color: HexColor("#c93c00"),
            fontSize: 15.0,
            fontWeight: FontWeight.bold),
        fillColor: HexColor("#fceee8"),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.orange)),
      ),
    );

    final loginbutton = Material(
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
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: HexColor("#dbf4ff"),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Picture

                // CircleAvatar(
                //   backgroundImage: AssetImage("assets/image/jbb_logo.jpg"),
                // ),
                //Subtitle
                Text(
                  "Ready for Recyle??",
                  style: TextStyle(
                    color: HexColor("#c93c00"),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    // fontFamily: 'Schyler'
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                emailfield,
                SizedBox(
                  height: 25.0,
                ),
                passfield,
                SizedBox(
                  height: 20.0,
                ),

                loginbutton,
                SizedBox(
                  height: 40.0,
                ),

                Text(
                  "Get ready for recycling ?",
                  style: TextStyle(
                    color: HexColor("#c93c00"),
                    fontSize: 15.0,
                    // fontFamily: 'Schyler'
                  ),
                ),

                Text(
                  "Join Us Now!",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 15.0,
                    // fontFamily: 'Schyler'
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
