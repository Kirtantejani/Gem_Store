import 'package:flutter/cupertino.dart';

import 'ordercontainer.dart';

class Cancelled extends StatelessWidget {
  Cancelled({super.key});
  List date = [DateTime.parse('2021-05-10'), DateTime.parse('2021-05-10')];
  List orderid = [1829, 1824];
  List trackid = ['IK' + 287368831.toString(), 'IK' + 2882918812.toString()];
  List quanlit = [2, 3];
  List price = [210, 110];
  @override
  Widget build(BuildContext context) {
    double height = 220.0 * orderid.length;
    return SingleChildScrollView(
      child: Container(
        height: height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: OrderContainer(
              date: date,
              orderid: orderid,
              price: price,
              quanlit: quanlit,
              trackid: trackid,
              orderstate: 'CANCELED'),
        ),
      ),
    );
    ;
  }
}
