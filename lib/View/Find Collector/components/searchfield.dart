import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: HexColor("#ffebb5").withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
          hintText: "Find collector",
          border: InputBorder.none, //INPUT UNDERLINE
          prefixIcon: Icon(Icons.search_rounded),
        ),
      ),
    );
  }
}
