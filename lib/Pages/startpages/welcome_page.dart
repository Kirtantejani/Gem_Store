import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/big_text.dart';
import 'intro_1.dart';

class Welcome_Page extends StatelessWidget {
  const Welcome_Page({super.key});

  @override
  Widget build(BuildContext context) {
    String hexColor = "#FFFFFF";
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
    ));

    return SafeArea(
      child: Material(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/welcome_image.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.62,
                    ),
                    BigText(
                      text: 'Welcome to GemStore!',
                      size: MediaQuery.of(context).size.height * 0.030769,
                      color: color,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.0230,
                    ),
                    BigText(
                      text: 'The home for a fashionista',
                      size: MediaQuery.of(context).size.height * 0.02051,
                      color: color,
                      weight: FontWeight.normal,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.023,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Intro1()));
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: MediaQuery.of(context).size.height *
                                    0.01666),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.02051,
                                  color: Colors.white,
                                ),
                              ),
                            )))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
