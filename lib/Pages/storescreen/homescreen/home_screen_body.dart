import 'package:app/Pages/storescreen/homescreen/resuabletext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../data/imagewithprice.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/horizotalscrollview.dart';
import 'Newcolllection.dart';
import 'Top_collection.dart';

class HomeScreenBody extends StatefulWidget {
  HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  int cuurent_page = 0;
  bool naviagtion_show = false;
  List<String> list = [
    'assets/image/Vector.png',
    'assets/image/Vector1.png',
    'assets/image/Vector2.png',
    'assets/image/Vector3.png',
  ];
  List<String> list1 = ['Women', 'Men', 'Accessories', 'Beauty'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarBrightness: Brightness.light,
      statusBarColor: Get.isDarkMode == true
          ? Colors.black
          : Colors.white.withOpacity(0.98),
      statusBarIconBrightness:
          Get.isDarkMode == true ? Brightness.light : Brightness.dark,
    ));
    return Scaffold(
      // backgroundColor: Get.isDarkMode == true ? Colors.black : Colors.white,
      // drawer: drawer(),
      body: tabbar(),
    );
  }

  SafeArea tabbar() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 2.217948,
          color: Theme.of(context).bottomAppBarTheme.color,
          // color: Get.isDarkMode == true ? Colors.black : Colors.white,
          // color: Themedark.darkmode == false ? Colors.white : Colors.black,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 80,
                width: double.infinity,
                child: tabbar_column(),
              ),
              cuurent_page == 0
                  ? body_women()
                  : cuurent_page == 1
                      ? Column(
                          children: [
                            Container(
                              height: 30,
                              width: 100,
                              color: Colors.red,
                            )
                          ],
                        )
                      : cuurent_page == 2
                          ? Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: 100,
                                  color: Colors.blue,
                                )
                              ],
                            )
                          : Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: 100,
                                  color: Get.isDarkMode == false
                                      ? Colors.purple
                                      : Colors.black,
                                )
                              ],
                            ),
            ],
          ),
        ),
      ),
    );
  }

  Column tabbar_column() {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: double.infinity,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      cuurent_page = index;
                    });
                  },
                  child: cuurent_page == index
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                decoration: BoxDecoration(
                                    color: Get.isDarkMode == true
                                        ? cuurent_page == index
                                            ? Colors.black
                                            : Colors.transparent
                                        : cuurent_page == index
                                            ? Colors.white
                                            : Colors.transparent,
                                    // : cuurent_page == index
                                    //     ? Colors.black
                                    //     : Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Get.isDarkMode == true
                                            ? Color.fromRGBO(252, 252, 253, 1)
                                            : Color.fromRGBO(58, 44, 39, 1),
                                        width: 2,
                                        style: BorderStyle.solid)),
                                height: 50,
                                // margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Get.isDarkMode == true
                                            ? cuurent_page == index
                                                ? Colors.white
                                                : Colors.transparent
                                            : cuurent_page == index
                                                ? Color.fromRGBO(58, 44, 39, 1)
                                                : Color.fromRGBO(
                                                    157, 157, 157, 1)),
                                    height: 36,
                                    margin: EdgeInsets.all(2),
                                    child: Image.asset(
                                        filterQuality: FilterQuality.high,
                                        color: Get.isDarkMode == true
                                            ? Color.fromRGBO(35, 38, 47, 1)
                                            : Colors.white,
                                        list[index])),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            BigText(
                                text: list1[index],
                                size: 14,
                                color: Get.isDarkMode == true
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(58, 44, 39, 1),
                                weight: FontWeight.normal),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22.0, vertical: 6),
                              child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Get.isDarkMode == true
                                          ? cuurent_page == index
                                              ? Colors.purple
                                              : Color.fromRGBO(35, 38, 47, 1)
                                          : cuurent_page == index
                                              ? Colors.blue
                                              : Color.fromRGBO(
                                                  243, 243, 243, 1)),
                                  height: 36,
                                  width: 40,

                                  // margin: EdgeInsets.all(5),
                                  child: Image.asset(
                                      fit: BoxFit.scaleDown,
                                      color: Get.isDarkMode == true
                                          ? Color.fromRGBO(171, 187, 195, 1)
                                          : Color.fromRGBO(157, 157, 157, 1),
                                      // height: 25,
                                      // width: 25,
                                      filterQuality: FilterQuality.high,
                                      list[index])),
                            ),
                            BigText(
                                text: list1[index],
                                size: 14,
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(171, 187, 195, 1)
                                    : Color.fromRGBO(157, 157, 157, 1),
                                weight: FontWeight.normal)
                          ],
                        ),
                );
              }),
        ),

        // Row(
        //   children: [
        //     Container(
        //       child: ListView.builder(
        //           itemCount: list1.length,
        //           itemBuilder: (context, index) {
        //             return BigText(
        //                 text: list1[index],
        //                 size: 14,
        //                 color: Color.fromRGBO(58, 44, 39, 1),
        //                 weight: FontWeight.normal);
        //           }),
        //     )
        //   ],
        // )
      ],
    );
  }

  body_women() {
    return Column(
      children: [
        mainpagefirstimagestack(),
        SizedBox(
          height: 20,
        ),
        HorizontalScrollView(text1: 'Feature Products', text2: 'Show all'),
        SizedBox(
          height: 19,
        ),
        NewCollect(context: context),
        SizedBox(
          height: 38,
        ),
        resuabletext(text1: 'Recommended', text2: 'Show all'),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
            // color: Color.fromRGBO(248, 248, 248, 1),
            height: 80,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: data2[index],
                  );
                }),
          ),
        ),
        SizedBox(
          height: 34,
        ),
        resuabletext(text1: 'Top Collections', text2: 'Show all'),
        SizedBox(
          height: 34,
        ),
        Top_Collections(),
      ],
    );
  }

  Stack mainpagefirstimagestack() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                  fit: BoxFit.fill, 'assets/image/main_page_image1.png'),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.20,
          width: MediaQuery.of(context).size.width * 0.90,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.57, top: 40),
            child: BigText(
              text: 'Autumn\nCollection\n2022',
              color: Colors.white,
              weight: FontWeight.bold,
              size: 22,
            ),
          ),
        ),
      ],
    );
  }
}
