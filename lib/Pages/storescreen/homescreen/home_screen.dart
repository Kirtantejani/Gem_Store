import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/Theme.dart';
import '../myorder/my_order_main_page.dart';
import '../profile/profile_main_page.dart';
import '../searchscreen/search_screen_main.dart';
import 'drawer.dart';
import 'enddrawer.dart';
import 'home_screen_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int index = Themedark.index;
  String appTitle = 'GemStore';
  List<String> navigationTitle = [
    'GemStore',
    'Discover',
    'My Orders',
    'Profile'
  ];
  List<Widget> navigation = [
    HomeScreenBody(),
    SearchPage(),
    MyOrder(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          // Themedark.darkmode == false ? Colors.white : Colors.black,
          drawer: drawer(
            index: index,
          ),
          endDrawer: EndDrawer(),
          appBar: appbar(
              context,
              Get.isDarkMode == true
                  ? Image.asset('assets/image/drawer_icon_dark_theme.png')
                  : Image.asset(
                      'assets/image/drawer_icon.png',
                    ),
              navigationTitle[index],
              Get.isDarkMode == true
                  ? Image.asset('assets/image/Bell_pin_dark.png')
                  : Image.asset('assets/image/postimage.png')),
          body: navigation[index],
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
                backgroundColor:
                    Get.isDarkMode == true ? Colors.black : Colors.white),
            // Themedark.darkmode == false ? Colors.white : ),
            child: NavigationBar(
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              height: 80,
              selectedIndex: index,
              onDestinationSelected: (index) => setState(() {
                this.index = index;
              }),
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  label: '',
                ),
                NavigationDestination(
                  icon: Icon(Icons.search),
                  label: '',
                ),
                NavigationDestination(
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: '',
                ),
                NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar appbar(
      BuildContext context, Image preimage, String title, Image postimage) {
    return AppBar(
      leading: Builder(
        builder: (context) => Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: TextButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: preimage),
        ),
      ),
      elevation: 0,
      backgroundColor: Get.isDarkMode == true
          ? Color.fromRGBO(42, 47, 55, 1)
          : Colors.transparent,
      // leading: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.white70.withOpacity(0.70)),
      //     onPressed: () {
      //       Scaffold.of(context).openDrawer();
      //     },
      //     child: preimage),
      title: Center(
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.0256410,
              fontWeight: FontWeight.bold,
              color: Get.isDarkMode == true ? Colors.white : Colors.black),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 22.0),
          child: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 30,
                child: postimage,
              ),
            ),
          ),
        )
      ],
    );
  }
}
