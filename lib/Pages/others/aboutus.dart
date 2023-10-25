import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../widgets/Theme.dart';
import '../../widgets/big_text.dart';
import '../storescreen/homescreen/home_screen.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    double version = 1.0;
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
            text: 'About US',
            weight: FontWeight.bold,
            size: 18,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/image/app_logo.png'),
            ),
            Spacer(
              flex: 1,
            ),
            BigText(
                text: 'Version: $version',
                size: 16,
                color: Get.isDarkMode ? Colors.white : Colors.black,
                weight: FontWeight.bold),
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                    text: 'Website : ',
                    size: 14,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    weight: FontWeight.normal),
                InkWell(
                  onTap: () => canLaunchUrlString(
                      'https://www.amazon.com/s?k=clothing+and+accessories&ref=nb_sb_ss_ts-doa-p_1_15'),
                  child: BigText(
                      text:
                          'https://www.amazon.com/s?k=clothin\ng+and+accessories&\nref=nb_sb_ss_ts-doa-p_1_15',
                      size: 12,
                      color: Colors.blue,
                      weight: FontWeight.normal),
                )
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BigText(
                      text: 'Declaration    ',
                      size: 14,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      weight: FontWeight.normal),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      child: BigText(
                          text: 'Privacy Policy',
                          size: 12,
                          color: Colors.blue,
                          weight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            ),
            Spacer(
              flex: 15,
            ),
            Expanded(
                child: BigText(
              size: 12,
              text: 'Copyright@2019 GemStore All Rights Reserved',
              color: Get.isDarkMode ? Colors.white24 : Colors.black12,
              weight: FontWeight.normal,
            ))
          ],
        ),
      ),
    );
  }
}
