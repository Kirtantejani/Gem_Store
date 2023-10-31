import 'package:app/Pages/storescreen/homescreen/home_screen.dart';
import 'package:app/Pages/storescreen/myorder/pending.dart';
import 'package:app/widgets/Theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'cancelled.dart';
import 'delivered.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=> Themedark().backButtton(context),

      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).bottomAppBarTheme.color,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: PreferredSize(
              preferredSize: Size(40, MediaQuery.of(context).size.width),
              child: Container(
                height: 30,
                child: TabBar(
                  unselectedLabelColor: Get.isDarkMode
                      ? Color.fromRGBO(244, 245, 246, 1)
                      : Colors.black,
                  indicator: BoxDecoration(
                      color: Get.isDarkMode
                          ? Color.fromRGBO(110, 119, 117, 0.058823529411764705)
                          : Color.fromRGBO(67, 72, 75, 1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color:
                              Get.isDarkMode ? Colors.white30 : Colors.black38)),
                  splashBorderRadius: BorderRadius.circular(20),
                  tabs: [
                    Tab(
                      child: Text(
                        'Pending',
                      ),
                    ),
                    Tab(
                      child: Text('Delivered'),
                    ),
                    Tab(
                      child: Text('Cancelled'),
                    )
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Theme.of(context).bottomAppBarTheme.color,
          body: TabBarView(children: [
            Pending(),
            Delivered(),
            Cancelled(),
          ]),
        ),
      ),
    );
  }


}
