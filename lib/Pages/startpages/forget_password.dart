import 'package:app/Pages/startpages/verification_code.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/big_text.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar(context),
        body: Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.044871,
              ),
              BigText(
                  text: 'Forgot Password?',
                  size: MediaQuery.of(context).size.height * 0.030769,
                  color: Get.isDarkMode == true ? Colors.white : Colors.black,
                  weight: FontWeight.bold),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05769,
              ),
              BigText(
                  text:
                      "Enter email associated with your account\nand we'll send and email with instructions to\nreset your password",
                  size: MediaQuery.of(context).size.height * 0.0179487,
                  color: Get.isDarkMode == true ? Colors.white : Colors.black,
                  weight: FontWeight.normal),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08333,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                    hintText: 'Enter your email here',
                    hintStyle: TextStyle(
                        color: Get.isDarkMode == true
                            ? Colors.white
                            : Colors.black),
                    border: UnderlineInputBorder(borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0448717,
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
                            builder: (context) => VerificationCode(
                                  appbar: appbar(context),
                                )));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: MediaQuery.of(context).size.height * 0.05128,
                    width: 80,
                    child: Center(
                      child: BigText(
                        text: 'Send OTP',
                        size: MediaQuery.of(context).size.height * 0.0205128,
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

  AppBar appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01538, left: 20),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Get.isDarkMode == true ? Colors.black : Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.inner,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Icon(
                size: MediaQuery.of(context).size.height * 0.01923,
                color: Get.isDarkMode == true ? Colors.white : Colors.black,
                Icons.arrow_back_ios_outlined,
              )),
        ),
      ),
    );
  }
}
