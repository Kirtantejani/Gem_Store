import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../widgets/big_text.dart';
import 'order_info.dart';
import 'order_info_pending.dart';

class OrderContainer extends StatelessWidget {
  OrderContainer(
      {required this.price,
      required this.quanlit,
      required this.trackid,
      required this.date,
      required this.orderid,
      required this.orderstate,
      super.key});
  final List orderid;
  final List trackid;
  final List quanlit;
  final List date;
  final List price;
  final String orderstate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < orderid.length; i++)
          Container(
            height: 220,
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Get.isDarkMode
                                ? Color.fromRGBO(35, 38, 47, 1)
                                : Color.fromRGBO(249, 249, 249, 1)),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Get.isDarkMode
                          ? Color.fromRGBO(53, 57, 69, 1)
                          : Colors.white24,
                      border: Border.all(
                          color: Get.isDarkMode
                              ? Color.fromRGBO(35, 38, 47, 1)
                              : Color.fromRGBO(249, 249, 249, 1))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          children: [
                            BigText(
                                text: 'Order #' + orderid[i].toString(),
                                size: 18,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Color.fromRGBO(20, 20, 22, 1),
                                weight: FontWeight.bold),
                            BigText(
                                text: DateFormat('dd-MM-yyyy').format(date[i]),
                                size: 14,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(177, 181, 195, 1)
                                    : Color.fromRGBO(119, 126, 144, 1),
                                weight: FontWeight.normal)
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            BigText(
                                text: 'Tracking number:',
                                size: 14,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(177, 181, 195, 1)
                                    : Color.fromRGBO(119, 126, 144, 1),
                                weight: FontWeight.normal),
                            Spacer(
                              flex: 1,
                            ),
                            BigText(
                                text: trackid[i],
                                size: 14,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                                weight: FontWeight.bold),
                            Spacer(
                              flex: 5,
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            BigText(
                                text: 'Quanlity:',
                                size: 14,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(177, 181, 195, 1)
                                    : Color.fromRGBO(119, 126, 144, 1),
                                weight: FontWeight.normal),
                            Spacer(
                              flex: 1,
                            ),
                            BigText(
                                text: quanlit[i].toString(),
                                size: 14,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                                weight: FontWeight.bold),
                            Spacer(
                              flex: 15,
                            ),
                            BigText(
                                text: 'Subtotal:',
                                size: 14,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(177, 181, 195, 1)
                                    : Color.fromRGBO(119, 126, 144, 1),
                                weight: FontWeight.normal),
                            Spacer(
                              flex: 1,
                            ),
                            BigText(
                                text: '\u0024' + price[i].toString(),
                                size: 14,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                                weight: FontWeight.bold),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            BigText(
                                text: orderstate,
                                size: 14,
                                color: orderstate == 'PENDING'
                                    ? Color.fromRGBO(207, 98, 18, 1)
                                    : orderstate == 'DELIVERED'
                                        ? Color.fromRGBO(0, 146, 84, 1)
                                        : Color.fromRGBO(197, 0, 0, 1),
                                weight: FontWeight.normal),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                orderstate == 'PENDING'
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OrderInfoPending(
                                                  trackid: trackid[i],
                                                  ordername: 'Order #' +
                                                      orderid[i].toString(),
                                                )),
                                      )
                                    : orderstate == 'DELIVERED'
                                        ? Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => OrderInfo(
                                                trackid: trackid[i],
                                                ordername: 'Order #' +
                                                    orderid[i].toString(),
                                              ),
                                            ),
                                          )
                                        : Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => OrderInfo(
                                                trackid: trackid[i],
                                                ordername: 'Order #' +
                                                    orderid[i].toString(),
                                              ),
                                            ),
                                          );
                              },
                              child: Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Get.isDarkMode
                                      ? Color.fromRGBO(35, 38, 47, 1)
                                      : Color.fromRGBO(249, 249, 249, 1),
                                  border: Border.all(
                                      color: Get.isDarkMode
                                          ? Color.fromRGBO(177, 181, 195, 1)
                                          : Color.fromRGBO(119, 126, 144, 1)),
                                ),
                                child: Center(
                                  child: BigText(
                                    text: 'Details',
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                    weight: FontWeight.normal,
                                    size: 14,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
      ],
    );
  }
}
