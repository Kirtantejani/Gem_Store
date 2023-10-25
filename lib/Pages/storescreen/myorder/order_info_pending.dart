import 'package:app/Pages/storescreen/myorder/trackorder.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/order_info_resuable.dart';

class OrderInfoPending extends StatelessWidget {
  OrderInfoPending({required this.trackid, required this.ordername, super.key});
  final String ordername;
  final String trackid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).bottomAppBarTheme.color,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined,
              size: 20, color: Get.isDarkMode ? Colors.white : Colors.black),
        ),
        title: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15),
          child: Text(
            ordername,
            style:
                TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).bottomAppBarTheme.color,
      body: OrderInfoResuable(
        title: 'Your order is on the way',
        subtitle: 'Click here to track your order',
        imagetext: Get.isDarkMode
            ? 'assets/image/order_image4.png'
            : 'assets/image/order_image3.png',
        ordername: ordername,
        trackid: trackid,
        state: 'Pending',
        ontap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TrackOrder()));
        },
      ),
    );
    ;
  }
}
