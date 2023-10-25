import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/big_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List containerlist = [
    [Icons.location_on, 'Address', Icons.arrow_forward_ios_rounded],
    [
      Icons.account_balance_wallet_rounded,
      'Payment method',
      Icons.arrow_forward_ios_rounded
    ],
    [
      Icons.confirmation_number_outlined,
      'Voucher',
      Icons.arrow_forward_ios_rounded
    ],
    [Icons.favorite, 'My Wishlist', Icons.arrow_forward_ios_rounded],
    [Icons.star_rounded, 'Rate this app', Icons.arrow_forward_ios_rounded],
    [Icons.logout_outlined, 'Log out', Icons.arrow_forward_ios_rounded],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).bottomAppBarTheme.color,
      body: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 68,
                  width: 68,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      fit: BoxFit.fill,
                      'assets/image/profile_image.png',
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                        text: 'Sunie Pham',
                        size: 16,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                        weight: FontWeight.bold),
                    SizedBox(height: 5),
                    BigText(
                        text: 'sunieux@gmail.com',
                        size: 12,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                        weight: FontWeight.normal)
                  ],
                ),
                Spacer(
                  flex: 5,
                ),
                Icon(
                  Icons.settings,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Get.isDarkMode
                          ? Color.fromRGBO(38, 38, 38, 1)
                          : Color.fromRGBO(242, 242, 242, 1))),
              child: Column(
                children: [
                  for (int i = 0; i < containerlist.length; i++)
                    Column(
                      children: [
                        Container(
                          child: ListTile(
                            title: Row(
                              children: [
                                Icon(containerlist[i][0]),
                                Spacer(
                                  flex: 1,
                                ),
                                BigText(
                                    text: containerlist[i][1],
                                    size: 14,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                    weight: FontWeight.normal),
                                Spacer(
                                  flex: 10,
                                ),
                                i == containerlist.length - 1
                                    ? Container()
                                    : Icon(
                                        containerlist[i][2],
                                        size: 17,
                                      )
                              ],
                            ),
                            onTap: () {},
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Get.isDarkMode
                              ? Color.fromRGBO(20, 20, 22, 1)
                              : Color.fromRGBO(243, 243, 246, 1),
                        )
                      ],
                    ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ),
          Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}
