import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/big_text.dart';
import 'create_new_pasword.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({required this.appbar, super.key});

  final AppBar appbar;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar,
        body: Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04487,
              ),
              BigText(
                  text: 'Verification code',
                  size: MediaQuery.of(context).size.height * 0.03076,
                  color: Get.isDarkMode == true ? Colors.white : Colors.black,
                  weight: FontWeight.bold),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05769,
              ),
              BigText(
                  text:
                      "Please enter the verification code we sent\nto your email address",
                  size: MediaQuery.of(context).size.height * 0.01794,
                  color: Get.isDarkMode == true ? Colors.white : Colors.black,
                  weight: FontWeight.normal),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.083333,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 21),
                  child: Pinput(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    length: 4,
                    defaultPinTheme: PinTheme(
                        textStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02564,
                            fontWeight: FontWeight.normal),
                        height: MediaQuery.of(context).size.height * 0.06410,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Get.isDarkMode == true
                                ? Colors.transparent
                                : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Get.isDarkMode == true
                                  ? Colors.white.withOpacity(0.7)
                                  : Colors.black.withOpacity(0.3),
                            ))),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.032051,
              ),
              BigText(
                  text: 'Resend in 00:10',
                  size: MediaQuery.of(context).size.height * 0.01794,
                  color: Get.isDarkMode == true
                      ? Colors.white.withOpacity(0.7)
                      : Colors.black.withOpacity(0.3),
                  weight: FontWeight.normal),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05769,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Get.isDarkMode == true
                          ? Colors.white
                          : Color.fromRGBO(45, 32, 28, 1.0)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreatePassword(
                                  appbar: appbar,
                                )));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: MediaQuery.of(context).size.height * 0.051282,
                    width: 80,
                    child: Center(
                      child: BigText(
                        text: 'Verify',
                        size: MediaQuery.of(context).size.height * 0.02051,
                        color: Get.isDarkMode == true
                            ? Colors.black
                            : Colors.white,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
