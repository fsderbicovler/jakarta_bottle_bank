import 'package:flutter/material.dart';
import 'package:jakarta_bottle_bank/View/Deposit/components/deposit_body.dart';
import 'package:jakarta_bottle_bank/View/Deposit/components/deposit_location.dart';
import 'package:jakarta_bottle_bank/View/Deposit/components/location_option.dart';
import 'package:jakarta_bottle_bank/View/Deposit/components/weight_input.dart';
import 'package:jakarta_bottle_bank/View/Deposit/deposit_screen.dart';
import 'package:jakarta_bottle_bank/View/Find%20Collector/find_collector_Screen.dart';
import 'package:jakarta_bottle_bank/View/Management/manage_screen.dart';
import 'package:jakarta_bottle_bank/View/home/home_screen.dart';
import 'package:jakarta_bottle_bank/View/jbb_deposit.dart';
import 'package:jakarta_bottle_bank/View/Login/jbb_login.dart';
import 'package:jakarta_bottle_bank/View/Registrations/registration_screen.dart';

import 'package:jakarta_bottle_bank/routes.dart';

import 'View/Profile/profile_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jakata Bottle Bank',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LoginScreen.routeName,
      // home: RpersonalScreen(),
      routes: routes,
    ),
  );
}
