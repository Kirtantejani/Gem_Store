import 'package:app/Pages/startpages/sign_up.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/big_text.dart';
import '../storescreen/homescreen/home_screen.dart';
import 'log_in.dart';

class Sign_in_up extends StatelessWidget {
  const Sign_in_up({required this.sign, super.key});
  final String sign;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
            height: MediaQuery.of(context).size.height * 0.05128,
            width: 150,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Get.isDarkMode == true
                        ? Colors.white
                        : Color.fromRGBO(45, 32, 28, 1.0)),
                onPressed: () {
                  sign == 'Sign-up'
                      ? Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()))
                      : Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Center(
                  child: BigText(
                    text: sign == 'Sign-up' ? 'SIGN UP' : 'LOG IN',
                    size: MediaQuery.of(context).size.height * 0.02051,
                    color: Get.isDarkMode == true ? Colors.black : Colors.white,
                    weight: FontWeight.bold,
                  ),
                )),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Opacity(
            opacity: 0.5,
            child: BigText(
                text: sign == 'Sign-up' ? 'or sign up with' : 'or log in with',
                size: MediaQuery.of(context).size.height * 0.01538,
                color: Get.isDarkMode == true ? Colors.white : Colors.black,
                weight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03846,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Get.isDarkMode == true
                ? Image.asset('assets/image/apple_logo.png')
                : Image.asset('assets/image/Frame 12.png'),
            SizedBox(
              width: 25,
            ),
            Image.asset('assets/image/Frame 13.png'),
            SizedBox(
              width: 25,
            ),
            Image.asset('assets/image/Frame 14.png'),
          ],
        ),
        sign == 'Sign-up'
            ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.032051,
              )
            : SizedBox(
                height: MediaQuery.of(context).size.height * 0.09615,
              ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigText(
                text: sign == 'Sign-up'
                    ? 'Already have account?'
                    : "Don't have an account?",
                size: MediaQuery.of(context).size.height * 0.017948,
                color: Get.isDarkMode == true ? Colors.white : Colors.black,
                weight: FontWeight.normal),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
                // ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //         elevation: 0,
                //         backgroundColor:
                //             Get.isDarkMode == true ? Colors.black : Colors.white),
                onTap: () {
                  sign == 'Sign-up'
                      ? Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()))
                      : Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: BigText(
                  text: sign == 'Sign-up' ? 'Log In' : 'Sign Up',
                  color: Get.isDarkMode == true ? Colors.white : Colors.black,
                  size: MediaQuery.of(context).size.height * 0.017948,
                  weight: FontWeight.normal,
                ))
          ],
        ),
      ],
    );
  }
}
