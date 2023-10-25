import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/Theme.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/theme_services.dart';
import '../../others/aboutus.dart';
import '../../others/setting.dart';
import '../../others/support.dart';
import 'home_screen.dart';

class drawer extends StatefulWidget {
  drawer({required this.index, super.key});
  late int index;
  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  List<String> tilename = [
    'HomePage',
    'Discover',
    'My Order',
    'My profile',
    'Setting',
    'Support',
    'About us'
  ];
  List<Icon> iconname = [
    Icon(Icons.home_outlined),
    Icon(Icons.search),
    Icon(Icons.shopping_bag_outlined),
    Icon(Icons.person_outline),
    Icon(Icons.settings),
    Icon(Icons.mail_outline),
    Icon(CupertinoIcons.exclamationmark_circle),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          Get.isDarkMode == true ? Color.fromRGBO(20, 20, 22, 1) : Colors.white,
      width: MediaQuery.of(context).size.width * 0.80,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                              fit: BoxFit.fill,
                              'assets/image/profile_image.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                              text: 'Sunie Pham',
                              size: 16,
                              color: Get.isDarkMode == true
                                  ? Colors.white
                                  : Colors.black,
                              // color: Themedark.darkmode == false
                              //     ? Colors.black
                              //     : Colors.white,
                              weight: FontWeight.bold),
                          SizedBox(
                            height: 6,
                          ),
                          BigText(
                              text: 'sunieux@gmail.com',
                              size: 12,
                              color: Get.isDarkMode == true
                                  ? Colors.white
                                  : Colors.black,
                              weight: FontWeight.normal),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              listview(context, 0),
              SizedBox(
                height: 10,
              ),
              listview(context, 1),
              SizedBox(
                height: 10,
              ),
              listview(context, 2),
              SizedBox(
                height: 10,
              ),
              listview(context, 3),
              Padding(
                padding: const EdgeInsets.only(left: 26.0, top: 10),
                child: BigText(
                    text: 'OTHER',
                    size: 14,
                    color: Get.isDarkMode == true
                        ? Color.fromRGBO(171, 181, 195, 1)
                        : Color.fromRGBO(119, 126, 144, 1),
                    weight: FontWeight.normal),
              ),
              SizedBox(
                height: 10,
              ),
              listview(context, 4),
              SizedBox(
                height: 10,
              ),
              listview(context, 5),
              SizedBox(
                height: 10,
              ),
              listview(context, 6),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.65,
                  decoration: BoxDecoration(
                      color: Get.isDarkMode == true
                          ? Color.fromRGBO(35, 38, 47, 1)
                          : Color.fromRGBO(240, 240, 240, 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: themebutton2(context),
                      ),
                      themebutton(
                          context,
                          CupertinoIcons.moon,
                          "Dark",
                          true,
                          Get.isDarkMode == true
                              ? Color.fromRGBO(244, 245, 246, 1)
                              : Color.fromRGBO(134, 139, 144, 1),
                          false)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector themebutton2(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ThemeServices().switchThemelight();
        setState(() {
          Scaffold.of(context).openDrawer();
        });
      },
      child: Container(
        height: 30,
        width: MediaQuery.of(context).size.width * 0.30,
        decoration: BoxDecoration(
            // color: Themedark.darkmode == true
            //     ? Colors.black
            color: Get.isDarkMode == true
                ? Colors.transparent
                : Color.fromRGBO(250, 250, 250, 1),
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.sun_max,
              // Themedark.darkmode == true ? Colors.white :
              color: Get.isDarkMode == true
                  ? Color.fromRGBO(230, 232, 236, 1)
                  : Colors.black,
            ),
            SizedBox(
              width: 8,
            ),
            BigText(
                text: "Light",
                size: 14,
                color: Get.isDarkMode == true
                    ? Color.fromRGBO(230, 232, 236, 1)
                    : Colors.black,
                // Themedark.darkmode == true ? Colors.white :
                weight: FontWeight.bold)
          ],
        ),
      ),
    );
  }

  //dark mode button
  GestureDetector themebutton(BuildContext context, IconData icon, String name,
      bool active, Color iconcolor, bool buttonactive) {
    return GestureDetector(
      onTap: () {
        ThemeServices().switchThemedark();
        // ThemeServices().switchTheme1();
        // Themedark.darkmode = active;});
      },
      // child: Get.isDarkMode == true
      //     ? Padding(
      //         padding: EdgeInsets.only(right: 6.0, bottom: 2),
      //         child: Stack(
      //           children: [
      //             Container(
      //               height: 30,
      //               width: MediaQuery.of(context).size.width * 0.30,
      //               decoration: BoxDecoration(
      //                   color: Color.fromRGBO(53, 57, 69, 1),
      //                   borderRadius: BorderRadius.circular(10)),
      //
      //             )
      //           ],
      //         ),
      //       )
      child: Container(
        height: 30,
        width: MediaQuery.of(context).size.width * 0.30,
        decoration: BoxDecoration(
            color: Get.isDarkMode == true
                ? Color.fromRGBO(53, 57, 69, 1)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconcolor,
            ),
            SizedBox(
              width: 8,
            ),
            BigText(
                text: name,
                size: 14,
                color: buttonactive == true
                    ? Colors.black
                    : Get.isDarkMode == true
                        ? Color.fromRGBO(244, 245, 246, 1)
                        : Color.fromRGBO(134, 139, 144, 1),
                weight: FontWeight.bold)
          ],
        ),
      ),
    );
  }

  Padding listview(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: widget.index == index
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Get.isDarkMode
                    ? Color.fromRGBO(35, 38, 47, 1)
                    : Color.fromRGBO(235, 236, 237, 1))
            : BoxDecoration(),
        child: ListTile(
          leading: iconname[index],
          title: Text(
            tilename[index],
            style:
                TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
          ),
          onTap: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => index == 4
                          ? Setting()
                          : index == 5
                              ? Support()
                              : index == 6
                                  ? AboutUs()
                                  : HomePage()));
              Themedark.index = index;
            });
          },
        ),
      ),
    );
  }
}
