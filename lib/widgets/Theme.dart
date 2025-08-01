import 'package:flutter/material.dart';

import '../Pages/storescreen/homescreen/home_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: primaryClr,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    backgroundColor: Colors.black,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: Colors.white),
  );
}
//
// TextStyle get subHeadingStyle {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//         color: Get.isDarkMode ? Colors.grey[400] : Colors.grey),
//   );
// }
//
// TextStyle get headingStyle {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//         fontSize: 25,
//         fontWeight: FontWeight.bold,
//         color: Get.isDarkMode ? Colors.white : Colors.black),
//   );
// }
//
// TextStyle get titleStyle {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.w400,
//         color: Get.isDarkMode ? Colors.white : Colors.black),
//   );
// }
//
// TextStyle get subTitleStyle {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//         fontSize: 14,
//         fontWeight: FontWeight.w400,
//         color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[400]),
//   );
// }

class Themedark {
  static int index = 0;
  static bool searchpagebody = false;



  Future<bool> backButtton(context) async{

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
      return true;

  }


}
