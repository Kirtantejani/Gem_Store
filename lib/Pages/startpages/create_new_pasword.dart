import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/big_text.dart';
import '../storescreen/homescreen/home_screen.dart';

class CreatePassword extends StatefulWidget {
  CreatePassword({required this.appbar, super.key});
  final AppBar appbar;

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  bool new_pass_bool = false;
  bool con_pass_bool = false;
  bool pass_match = false;
  TextEditingController new_pass_con = new TextEditingController();
  TextEditingController con_pass_con = new TextEditingController();
  List<String> hinttext = ['New Password', 'Confirm Password'];

  List<String> labaltext = ['Password', 'Confirm Password'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: widget.appbar,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.048717,
                left: 35,
                right: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                    text: 'Create new password',
                    size: MediaQuery.of(context).size.height * 0.030769,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    weight: FontWeight.bold),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010256,
                ),
                BigText(
                    text:
                        'Your new password must be different\nfrom previously password',
                    size: MediaQuery.of(context).size.height * 0.017948,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    weight: FontWeight.normal),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07564,
                ),
                TextFormField(
                  controller: new_pass_con,
                  obscureText: new_pass_bool == false ? true : false,
                  decoration: InputDecoration(
                      labelText: labaltext[0],
                      hintText: hinttext[0],
                      labelStyle: TextStyle(
                          color: Get.isDarkMode == true
                              ? Colors.white
                              : Colors.black),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (new_pass_bool == false) {
                              new_pass_bool = true;
                            } else {
                              new_pass_bool = false;
                            }
                          });
                        },
                        child: Icon(
                          new_pass_bool == false
                              ? CupertinoIcons.eye_slash_fill
                              : CupertinoIcons.eye_fill,
                          color: Get.isDarkMode == true
                              ? Colors.white
                              : Colors.grey,
                          size: MediaQuery.of(context).size.height * 0.030769,
                        ),
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02564,
                ),
                TextFormField(
                  controller: con_pass_con,
                  obscureText: con_pass_bool == false ? true : false,
                  decoration: InputDecoration(
                      labelText: labaltext[1],
                      hintText: hinttext[1],
                      labelStyle: TextStyle(
                          color: Get.isDarkMode == true
                              ? Colors.white
                              : Colors.black),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (con_pass_bool == false) {
                              con_pass_bool = true;
                            } else {
                              con_pass_bool = false;
                            }
                          });
                        },
                        child: Icon(
                          con_pass_bool == false
                              ? CupertinoIcons.eye_slash_fill
                              : CupertinoIcons.eye_fill,
                          color: Get.isDarkMode == true
                              ? Colors.white
                              : Colors.grey,
                          size: MediaQuery.of(context).size.height * 0.030769,
                        ),
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13717,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Get.isDarkMode == true
                            ? Colors.white
                            : pass_match == true
                                ? Colors.black
                                : Colors.black.withOpacity(0.5)),
                    onPressed: () {
                      setState(() {
                        confirmbutton(new_pass_con, con_pass_con);
                        buildShowModalBottomSheet(context);
                      });
                    },
                    child: BigText(
                      text: 'Confirm',
                      size: MediaQuery.of(context).size.height * 0.0205128,
                      weight: FontWeight.bold,
                      color:
                          Get.isDarkMode == true ? Colors.black : Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                        context: context,
                        elevation: 0.5,
                        backgroundColor: Get.isDarkMode == true
                            ? Colors.black
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        builder: (context) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                blurStyle: BlurStyle.outer,
                                color: Colors.black,
                                blurRadius: 2,
                              )
                            ],
                          ),
                          height: MediaQuery.of(context).size.height * 0.40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.010256,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    0.005128,
                                width: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Get.isDarkMode == true
                                        ? Colors.white
                                        : Colors.grey.withOpacity(0.5)),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.03205,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    0.12820,
                                width: 100,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Get.isDarkMode == true
                                        ? Colors.white
                                        : Color.fromRGBO(151, 151, 151, 0.1)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child:
                                      Image.asset('assets/image/Success.png'),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.02564,
                              ),
                              BigText(
                                  text: 'Your password has been changed',
                                  size: MediaQuery.of(context).size.height *
                                      0.021794,
                                  color: Get.isDarkMode == true
                                      ? Colors.white
                                      : Colors.black,
                                  weight: FontWeight.bold),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.01923,
                              ),
                              BigText(
                                  text: 'Welcome back! Discover now!',
                                  size: MediaQuery.of(context).size.height *
                                      0.015384,
                                  color: Get.isDarkMode == true
                                      ? Colors.white
                                      : Color.fromRGBO(51, 34, 24, 1),
                                  weight: FontWeight.normal),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.02564,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Get.isDarkMode == true
                                        ? Colors.white
                                        : Colors.black,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                child: Container(
                                    height:
                                        MediaQuery.of(context).size.height *
                                            0.051282,
                                    width: 200,
                                    child: Center(
                                        child: BigText(
                                      text: 'Brower home',
                                      size:
                                          MediaQuery.of(context).size.height *
                                              0.01923,
                                      color: Get.isDarkMode == true
                                          ? Colors.black
                                          : Colors.white,
                                      weight: FontWeight.bold,
                                    ))),
                              ),
                            ],
                          ),
                        ),
                      );
  }

  bool confirmbutton(
      TextEditingController newCon, TextEditingController conCon) {
    if (newCon.text != conCon.text || newCon.text == '' || conCon.text == '') {
      pass_match = false;
    } else {
      pass_match = true;
    }
    return pass_match;
  }
}
