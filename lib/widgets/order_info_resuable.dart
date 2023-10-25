import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Pages/storescreen/homescreen/home_screen.dart';
import 'big_text.dart';

class OrderInfoResuable extends StatelessWidget {
  OrderInfoResuable({
    super.key,
    required this.title,
    required this.subtitle,
    required this.ordername,
    required this.trackid,
    required this.state,
    required this.imagetext,
    required this.ontap,
  });

  final String ordername;
  final String trackid;
  final String state;
  final String imagetext;
  final String title;
  final String subtitle;
  Function() ontap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.90,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Container(
                height: 92,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Get.isDarkMode
                        ? Color.fromRGBO(230, 232, 236, 1)
                        : Color.fromRGBO(87, 87, 87, 1)),
                child: TextButton(
                  onPressed: ontap,
                  child: Row(
                    children: [
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Expanded(
                            child: BigText(
                                text: title,
                                size: 16,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(35, 38, 47, 1)
                                    : Colors.white,
                                weight: FontWeight.bold),
                          ),
                          Spacer(),
                          Expanded(
                            child: BigText(
                                text: subtitle,
                                size: 10,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(35, 38, 47, 1)
                                    : Colors.white,
                                weight: FontWeight.bold),
                          ),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                      Image.asset(imagetext),
                      Spacer()
                    ],
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 114,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Get.isDarkMode
                          ? Color.fromRGBO(20, 20, 22, 1)
                          : Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BigText(
                                text: 'Order Number',
                                size: 12,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(18, 20, 32, 0.5),
                                weight: FontWeight.normal),
                            BigText(
                                text: ordername,
                                size: 12,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Color.fromRGBO(35, 38, 47, 1),
                                weight: FontWeight.normal)
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BigText(
                                text: 'Tracking Number',
                                size: 12,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(18, 20, 32, 0.5),
                                weight: FontWeight.normal),
                            BigText(
                                text: trackid,
                                size: 12,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Color.fromRGBO(35, 38, 47, 1),
                                weight: FontWeight.normal)
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BigText(
                                text: 'Delivery Address',
                                size: 12,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(18, 20, 32, 0.5),
                                weight: FontWeight.normal),
                            Spacer(),
                            Expanded(
                              child: BigText(
                                  text: 'SBI Building,Software Park',
                                  size: 12,
                                  color: Get.isDarkMode
                                      ? Colors.white
                                      : Color.fromRGBO(35, 38, 47, 1),
                                  weight: FontWeight.normal),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 247,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Get.isDarkMode
                          ? Color.fromRGBO(20, 20, 22, 1)
                          : Colors.white),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Spacer(
                          flex: 2,
                        ),
                        Row(
                          children: [
                            BigText(
                                text: 'Maxi Dress',
                                size: 14,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(18, 20, 32, 0.5),
                                weight: FontWeight.normal),
                            Spacer(
                              flex: 8,
                            ),
                            BigText(
                                text: 'x1',
                                size: 15,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(18, 20, 32, 0.5),
                                weight: FontWeight.normal),
                            Spacer(
                              flex: 2,
                            ),
                            BigText(
                                text: '\u002468.00',
                                size: 16,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(20, 20, 22, 1),
                                weight: FontWeight.bold),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Row(
                          children: [
                            BigText(
                                text: 'Linen Dress',
                                size: 14,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(18, 20, 32, 0.5),
                                weight: FontWeight.normal),
                            Spacer(
                              flex: 8,
                            ),
                            BigText(
                                text: 'x1',
                                size: 15,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(18, 20, 32, 0.5),
                                weight: FontWeight.normal),
                            Spacer(
                              flex: 2,
                            ),
                            BigText(
                                text: '\u002452.00',
                                size: 16,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(20, 20, 22, 1),
                                weight: FontWeight.bold),
                          ],
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Row(
                          children: [
                            BigText(
                                text: 'Sub Total',
                                size: 14,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(18, 20, 32, 0.5),
                                weight: FontWeight.normal),
                            Spacer(),
                            BigText(
                                text: '\u0024120.00',
                                size: 16,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(20, 20, 22, 1),
                                weight: FontWeight.bold),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Row(
                          children: [
                            BigText(
                                text: 'Shipping',
                                size: 14,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(18, 20, 32, 0.5),
                                weight: FontWeight.normal),
                            Spacer(),
                            BigText(
                                text: '\u00240.00',
                                size: 16,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(20, 20, 22, 1),
                                weight: FontWeight.bold),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Divider(
                          color: Get.isDarkMode
                              ? Colors.white.withOpacity(0.20)
                              : Colors.black.withOpacity(0.20),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Row(
                          children: [
                            BigText(
                                text: 'Total',
                                size: 14,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(18, 20, 32, 0.5),
                                weight: FontWeight.normal),
                            Spacer(),
                            BigText(
                                text: '\u0024120.00',
                                size: 16,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(20, 20, 22, 1),
                                weight: FontWeight.bold),
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: state == 'Delivered'
                    ? Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              child: Container(
                                height: 44,
                                width: 148,
                                decoration: BoxDecoration(
                                    color: Get.isDarkMode
                                        ? Color.fromRGBO(20, 20, 22, 1)
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Get.isDarkMode
                                            ? Color.fromRGBO(177, 181, 195, 1)
                                            : Color.fromRGBO(
                                                119, 126, 144, 1))),
                                child: Center(
                                  child: BigText(
                                    text: 'Return home',
                                    color: Get.isDarkMode
                                        ? Color.fromRGBO(177, 181, 195, 1)
                                        : Color.fromRGBO(119, 126, 144, 1),
                                    size: 16,
                                    weight: FontWeight.bold,
                                  ),
                                ),
                              )),
                          Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Container(
                                height: 44,
                                width: 109,
                                decoration: BoxDecoration(
                                    color: Get.isDarkMode
                                        ? Color.fromRGBO(252, 252, 253, 1)
                                        : Color.fromRGBO(52, 52, 52, 1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Get.isDarkMode
                                            ? Color.fromRGBO(177, 181, 195, 1)
                                            : Color.fromRGBO(
                                                119, 126, 144, 1))),
                                child: Center(
                                  child: BigText(
                                    text: 'Rate',
                                    color: Get.isDarkMode
                                        ? Color.fromRGBO(20, 20, 22, 1)
                                        : Colors.white,
                                    size: 16,
                                    weight: FontWeight.bold,
                                  ),
                                ),
                              ))
                        ],
                      )
                    : TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Container(
                          height: 48,
                          width: 315,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Get.isDarkMode
                                  ? Color.fromRGBO(252, 252, 253, 1)
                                  : Color.fromRGBO(52, 52, 52, 1)),
                          child: Center(
                            child: BigText(
                              text: 'Continue shopping',
                              color: Get.isDarkMode
                                  ? Color.fromRGBO(20, 20, 22, 1)
                                  : Colors.white,
                              size: 16,
                              weight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
              ),
              Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
