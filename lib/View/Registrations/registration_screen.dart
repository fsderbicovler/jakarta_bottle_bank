import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/View/Registrations/components/registration_body.dart';

class RpersonalScreen extends StatefulWidget {
  @override
  _RpersonalScreenState createState() => _RpersonalScreenState();
}

class _RpersonalScreenState extends State<RpersonalScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime selecteddate;

    final fullnamefield = TextField(
      style: TextStyle(color: Colors.orange),
      decoration: InputDecoration(
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        hintText: "Fullname",
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
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.orange)),
      ),
    );

    final emailfield = TextField(
      style: TextStyle(color: Colors.orange),
      decoration: InputDecoration(
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        hintText: "Email Address",
        hintStyle: TextStyle(color: HexColor("#c93c00"), fontSize: 12.0),
        // labelText: "Email Address",
        // // labelStyle: TextStyle(
        //     color: HexColor("#c93c00"),
        // fontSize: 20.0,
        //     fontWeight: FontWeight.bold),
        fillColor: HexColor("#fceee8"),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.orange)),
      ),
    );

    final addressfield = TextField(
      style: TextStyle(color: Colors.blue),
      decoration: InputDecoration(
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        hintText: "Home Address",
        hintStyle: TextStyle(
          color: HexColor("#c93c00"),
          fontSize: 12.0,
        ),
        // labelText: "Email Address",
        // labelStyle: TextStyle(
        //     color: HexColor("#c93c00"),
        //     fontSize: 20.0,
        //     fontWeight: FontWeight.bold),
        fillColor: HexColor("#fceee8"),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.orange)),
      ),
    );

    final datefield = DateTimeField(
        decoration: const InputDecoration(
            hintStyle: TextStyle(color: Colors.black),
            suffixIcon: Icon(Icons.event_note),
            labelText: "Date"),
        mode: DateTimeFieldPickerMode.date,
        onDateSelected: (DateTime value) {
          setState(() {
            selecteddate = value;
          });
          print(value);
        },
        firstDate: DateTime(2010, 3, 20),
        // lastDate: DateTime(2020, 2, 1),
        selectedDate: selecteddate);

    final nextbutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: HexColor("#c85320"),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        minWidth: 200.0,
        child: Text(
          "N E X T",
          textAlign: TextAlign.center, //text will be at the centre
          style: TextStyle(color: Colors.orangeAccent),
        ),
        onPressed: () {},
      ),
    );

    String city = 'Ciracas';
    final citydd = DropdownButton<String>(
      icon: const Icon(Icons.arrow_drop_down_circle),
      items: <String>[
        'Ciracas',
        'Sudirman',
        'Pondok indah',
        'Kuningan',
        'Jaksa',
        'Halim'
      ].map((String value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      onChanged: (String newcity) {
        setState(() {
          city = newcity;
        });
      },
    );

    return Scaffold(
      body: RegistrationBody(),
    );
  }
}
