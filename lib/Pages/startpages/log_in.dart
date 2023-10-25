import 'package:app/Pages/startpages/sign_in_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../widgets/big_text.dart';
import 'forget_password.dart';
import 'sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness:
          Get.isDarkMode == true ? Brightness.light : Brightness.light,
      statusBarColor: Get.isDarkMode == true
          ? Colors.black
          : Color.fromRGBO(45, 32, 28, 1.0),
    ));
    List<String> hinttext = ['Enter Email address', 'Enter Password'];
    List<String> labaltext = ['Email', 'Password'];
    print("LoginPage======> ${Get.isDarkMode}");
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).bottomAppBarTheme.color,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.09615,
              left: 25,
              right: 25,
              bottom: MediaQuery.of(context).size.height * 0.01282),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                  text: 'Log into ',
                  size: MediaQuery.of(context).size.height * 0.030769,
                  color: Get.isDarkMode == true ? Colors.white : Colors.black,
                  weight: FontWeight.bold),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.019230,
              ),
              BigText(
                  text: 'your account',
                  size: MediaQuery.of(context).size.height * 0.030769,
                  color: Get.isDarkMode == true ? Colors.white : Colors.black,
                  weight: FontWeight.bold),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.019230,
              ),
              textfield(labaltext[0], hinttext[0]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.019230,
              ),
              textfield(labaltext[1], hinttext[1]),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.03846),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword()));
                      },
                      child: Text('Forgot Passowrd?',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.01538,
                            color: Get.isDarkMode == true
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.normal,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Sign_in_up(sign: 'Sign-in'),
            ],
          ),
        ),
      ),
    ));
  }
}
