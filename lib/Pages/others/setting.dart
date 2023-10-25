import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/Theme.dart';
import '../../widgets/big_text.dart';
import '../storescreen/homescreen/home_screen.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    List containerlist = [
      [Icons.language, 'Language', Icons.arrow_forward_ios_rounded],
      [Icons.notifications, 'Notification', Icons.arrow_forward_ios_rounded],
      [
        Icons.assignment_rounded,
        'Terms of Use',
        Icons.arrow_forward_ios_rounded
      ],
      [Icons.info_outline, 'Pricavy Policy', Icons.arrow_forward_ios_rounded],
      [Icons.near_me_outlined, 'Chat support', Icons.arrow_forward_ios_rounded],
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).bottomAppBarTheme.color,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
            onPressed: () {
              Themedark.index = 0;
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
              // Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Theme.of(context).bottomAppBarTheme.color,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 75.0),
          child: BigText(
            text: 'Setting',
            weight: FontWeight.bold,
            size: 18,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
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
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
                              weight: FontWeight.normal),
                          Spacer(
                            flex: 10,
                          ),
                          Icon(
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
          ],
        ),
      ),
    );
  }
}
