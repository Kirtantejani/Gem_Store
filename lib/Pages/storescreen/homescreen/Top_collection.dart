import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/big_text.dart';

class Top_Collections extends StatefulWidget {
  const Top_Collections({super.key});

  @override
  State<Top_Collections> createState() => _Top_CollectionsState();
}

class _Top_CollectionsState extends State<Top_Collections> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    color: Get.isDarkMode == true
                        ? Color.fromRGBO(35, 38, 47, 1)
                        : Color.fromRGBO(156, 156, 236, 0.1),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.52, top: 30),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Get.isDarkMode == true
                      ? Color.fromRGBO(71, 77, 96, 1)
                      : Color.fromRGBO(236, 236, 236, 1),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.50, top: 8),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.24,
                  child: Image.asset(
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      'assets/image/image_mainpage7.png')),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0, top: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(
                      text: '|  Sale up to 40%',
                      size: 16,
                      color: Get.isDarkMode == true
                          ? Color.fromRGBO(177, 181, 195, 1)
                          : Color.fromRGBO(119, 126, 144, 1),
                      weight: FontWeight.normal),
                  SizedBox(
                    height: 23,
                  ),
                  BigText(
                      text: 'FOR SLIM\n& BEAUTY',
                      size: 24,
                      color: Get.isDarkMode == true
                          ? Color.fromRGBO(252, 252, 253, 1)
                          : Color.fromRGBO(119, 126, 144, 1),
                      weight: FontWeight.normal),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 19,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                    color: Get.isDarkMode == true
                        ? Color.fromRGBO(35, 38, 47, 1)
                        : Color.fromRGBO(156, 156, 236, 0.1),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.48, top: 30),
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Get.isDarkMode == true
                      ? Color.fromRGBO(71, 77, 96, 1)
                      : Color.fromRGBO(236, 236, 236, 1),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.46, top: 8),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.29,
                  child: Image.asset(
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      'assets/image/image_mainpage8.png')),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 40),
                  child: BigText(
                      text: '|  Summer Collection 2021',
                      size: 13,
                      color: Get.isDarkMode == true
                          ? Color.fromRGBO(171, 181, 195, 1)
                          : Color.fromRGBO(119, 126, 144, 1),
                      weight: FontWeight.normal),
                ),
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: BigText(
                      text: 'MOST SEXY\n& fabulous\ndesign',
                      size: 21,
                      color: Get.isDarkMode == true
                          ? Color.fromRGBO(252, 252, 253, 1)
                          : Color.fromRGBO(119, 126, 144, 1),
                      weight: FontWeight.normal),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(),
              child: Stack(children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Get.isDarkMode == true
                        ? Color.fromRGBO(35, 38, 47, 1)
                        : Color.fromRGBO(156, 156, 236, 0.2),
                  ),
                ),
                Container(
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                          fit: BoxFit.fill, 'assets/image/image_mainpage9.png'),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 85.0, top: 40),
                  child: Column(
                    children: [
                      BigText(
                          text: 'T-Shits',
                          size: 15,
                          color: Get.isDarkMode == true
                              ? Color.fromRGBO(171, 181, 195, 1)
                              : Color.fromRGBO(115, 118, 128, 1),
                          weight: FontWeight.normal),
                      SizedBox(
                        height: 10,
                      ),
                      BigText(
                          text: 'The\nOffice\nLife',
                          size: 19,
                          color: Get.isDarkMode == true
                              ? Color.fromRGBO(252, 252, 253, 1)
                              : Color.fromRGBO(29, 31, 34, 1),
                          weight: FontWeight.normal),
                    ],
                  ),
                )
              ]),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Stack(children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Get.isDarkMode == true
                        ? Color.fromRGBO(35, 38, 47, 1)
                        : Color.fromRGBO(156, 156, 236, 0.2),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.41,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                          fit: BoxFit.fill,
                          'assets/image/image_mainpage10.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 40),
                  child: Column(
                    children: [
                      BigText(
                          text: 'Dresses',
                          size: 15,
                          color: Get.isDarkMode == true
                              ? Color.fromRGBO(171, 181, 195, 1)
                              : Color.fromRGBO(115, 118, 128, 1),
                          weight: FontWeight.normal),
                      SizedBox(
                        height: 20,
                      ),
                      BigText(
                          text: 'Elegant\nDesign',
                          size: 19,
                          color: Get.isDarkMode == true
                              ? Color.fromRGBO(252, 252, 253, 1)
                              : Color.fromRGBO(29, 31, 34, 1),
                          weight: FontWeight.normal),
                    ],
                  ),
                )
              ]),
            ),
          ],
        )
      ],
    );
  }
}
