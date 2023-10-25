import 'package:flutter/cupertino.dart';

import 'ordercontainer.dart';

class Delivered extends StatelessWidget {
  Delivered({super.key});
  List date = [
    DateTime.parse('2021-05-13'),
    DateTime.parse('2021-05-12'),
    DateTime.parse('2021-05-10')
  ];
  List orderid = [1514, 1679, 1671];
  List trackid = [
    'IK' + 987362341.toString(),
    'IK' + 3873218890.toString(),
    'IK' + 237368881.toString()
  ];
  List quanlit = [2, 3, 3];
  List price = [110, 450, 400];

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
              orderstate: 'DELIVERED'),
        ),
      ),
    );
    ;
  }
}
