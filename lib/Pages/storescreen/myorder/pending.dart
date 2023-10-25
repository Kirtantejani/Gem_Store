import 'package:flutter/material.dart';

import 'ordercontainer.dart';


class Pending extends StatefulWidget {
  const Pending({super.key});

  @override
  State<Pending> createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  List date = [
    DateTime.parse('2021-05-13'),
    DateTime.parse('2021-05-12'),
    DateTime.parse('2021-05-10')
  ];
  List orderid = [1524, 1523, 1522];
  List trackid = [
    'IK' + 287368838.toString(),
    'IK' + 2873218897.toString(),
    'IK' + 237368820.toString()
  ];
  List quanlit = [2, 3, 5];
  List price = [110, 230, 490];

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
              orderstate: 'PENDING'),
        ),
      ),
    );
  }
}
