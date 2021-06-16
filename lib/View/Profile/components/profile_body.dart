import 'package:flutter/material.dart';
import 'package:jakarta_bottle_bank/Model/users_data.dart';
import 'package:jakarta_bottle_bank/View/Profile/components/profile_menu.dart';
import 'package:jakarta_bottle_bank/View/Profile/components/profile_pict.dart';
import 'package:jakarta_bottle_bank/View/Profile/components/profile_mini.dart';
import 'package:jakarta_bottle_bank/View/Profile/components/profle_header.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ProfileHeader(),
            SizedBox(
              height: 20,
            ),
            ProfilePict(),
            SizedBox(
              height: 10,
            ),
            ProfileMini(userlist: userlist[1]),
            SizedBox(
              height: 5,
            ),
            ProfileMenu(
              text: "Personal Data",
              icon: "assets/icons/Parcel.svg",
              press: () {},
            ),
            SizedBox(
              height: 5,
            ),
            ProfileMenu(
              text: "User Guidline ",
              icon: "assets/icons/Chat bubble Icon.svg",
              press: () {},
            ),
            SizedBox(
              height: 5,
            ),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/Icon.svg",
              press: () {},
            ),
          ],
        ));
  }
}
