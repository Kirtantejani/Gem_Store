import 'package:app/Pages/startpages/sign_in_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../widgets/Appcolor.dart';
import '../../widgets/big_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  AppColors colors(context) => Theme.of(context).extension<AppColors>()!;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Get.isDarkMode == true
          ? Colors.black
          : Color.fromRGBO(45, 32, 28, 1.0),
      statusBarIconBrightness: Brightness.light,
    ));
    List<String> hintlist = [
      'Enter your name',
      'Enter email address',
      'Enter password',
      'Re-Enter your password'
    ];
    List<String> labellist = [
      'Username',
      'Email address',
      'Password',
      'Confirm password'
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).bottomAppBarTheme.color,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02564,
                left: 25,
                right: 25,
                bottom: MediaQuery.of(context).size.height * 0.01282),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01923,
                ),
                BigText(
                    text: 'Create ',
                    size: MediaQuery.of(context).size.height * 0.030769,
                    color: Get.isDarkMode == true ? Colors.white : Colors.black,
                    weight: FontWeight.bold),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01923,
                ),
                BigText(
                    text: 'your account',
                    size: MediaQuery.of(context).size.height * 0.030769,
                    color: Get.isDarkMode == true ? Colors.white : Colors.black,
                    weight: FontWeight.bold),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01923,
                ),
                textfield(labellist[0], hintlist[0]),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01923,
                ),
                textfield(labellist[1], hintlist[1]),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01923,
                ),
                textfield(labellist[2], hintlist[2]),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01923,
                ),
                textfield(labellist[3], hintlist[3]),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.070512,
                ),
                Sign_in_up(
                  sign: 'Sign-up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget textfield(String label, String hint) {
  return TextField(
    decoration: InputDecoration(
      labelText: label,
      hintText: hint,
      labelStyle: TextStyle(
        color: Get.isDarkMode == true ? Colors.white : Colors.black,
      ),
    ),
  );
}
