import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jakarta_bottle_bank/Model/collector_location.dart';

class LocationOption extends StatelessWidget {
  //  String mallname;
  CollectorLoc locationlist;
  LocationOption({
    Key key,
    @required this.locationlist,
    // @required this.mallname,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      decoration: BoxDecoration(
        border: Border(
            // top: BorderSide(width: 1.1, color: HexColor("#c85320")),
            // left: BorderSide(width: 1.1, color: HexColor("#c85320")),
            ),
      ),
      child: ExpandablePanel(
          iconColor: Colors.orange,
          header: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Radio(
                value: 0,
                groupValue: null,
                onChanged: null,
              ),
              Text(
                "${locationlist.area}",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: HexColor("c85320")),
              ),
            ],
          ),
          expanded: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${locationlist.building} , "),
              Text("${locationlist.distance} km, "),
              Text("${locationlist.area}")
            ],
          )),
    );
  }
}
