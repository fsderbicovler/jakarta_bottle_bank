import 'package:flutter/widgets.dart';
import 'package:jakarta_bottle_bank/View/Deposit/deposit_screen.dart';
import 'package:jakarta_bottle_bank/View/Find%20Collector/Find_collector_Screen.dart';
import 'package:jakarta_bottle_bank/View/Management/manage_screen.dart';
import 'package:jakarta_bottle_bank/View/Profile/profile_screen.dart';
import 'package:jakarta_bottle_bank/View/home/home_screen.dart';
import 'package:jakarta_bottle_bank/View/Login/jbb_login.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  // SignUpScreen.routeName: (context) => SignUpScreen(),
  // DepositScreen.routeName: (context) => CompleteProfileScreen(),
  DepositScreen.routeName: (context) => DepositScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  FindCollector.routeName: (context) => FindCollector(),
  ManagementScreen.routeName: (context) => ManagementScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
