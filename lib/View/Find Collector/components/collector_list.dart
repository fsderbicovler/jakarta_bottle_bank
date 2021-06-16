import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/Model/users_data.dart';
import 'package:jakarta_bottle_bank/Model/collector_location.dart';
import 'package:jakarta_bottle_bank/size_config.dart';

class CollectorList extends StatelessWidget {
  // final CollectorData collectorlist;
  // const CollectorList({
  //   Key key,
  //   @required this.collectorlist,
  // }) : super(key: key);

  final CollectorLoc locationlist;
  const CollectorList({
    Key key,
    @required this.locationlist,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: HexColor("#ffebb5"),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text.rich(
          TextSpan(style: TextStyle(color: HexColor("#c85320")), children: [
        TextSpan(
          text: "${locationlist.col_id}\n",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        TextSpan(
          text: "${locationlist.building}\n",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        TextSpan(
          text: "${locationlist.address}\n",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        TextSpan(
          text: "available in ${locationlist.area} \n",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        TextSpan(
          text: "close to ${locationlist.distance} km\n",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ])),
    );
  }
}
