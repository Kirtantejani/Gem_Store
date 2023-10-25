import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../widgets/Theme.dart';
import '../storescreen/homescreen/home_screen.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerFrom = TextEditingController();
    TextEditingController controllerSubject = TextEditingController();
    TextEditingController controllerMessage = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).bottomAppBarTheme.color,
      appBar: AppBar(
        backgroundColor: Theme.of(context).bottomAppBarTheme.color,
        title: Padding(
          padding: const EdgeInsets.only(left: 58.0),
          child: Text('FeedBack'),
        ),
        elevation: 0,
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 1,
            ),
            Text(
              "Subject",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Get.isDarkMode ? Colors.white : Colors.black),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: Get.isDarkMode ? Colors.white30 : Colors.black38)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 2, right: 8.0),
                child: TextField(
                  controller: controllerSubject,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Subject',
                      hintStyle: TextStyle(
                          color: Get.isDarkMode
                              ? Colors.white24
                              : Colors.black12)),
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "Message",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Get.isDarkMode ? Colors.white : Colors.black),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: Get.isDarkMode ? Colors.white30 : Colors.black38)),
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                child: TextField(
                  maxLines: 10,
                  controller: controllerMessage,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Message',
                      hintStyle: TextStyle(
                          color: Get.isDarkMode
                              ? Colors.white24
                              : Colors.black12)),
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Center(
              child: GestureDetector(
                onTap: () => launchEmail(
                  subject: controllerSubject.text,
                  message: controllerMessage.text,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 35,
                  child: Center(
                      child: Text(
                    'Send',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Get.isDarkMode ? Colors.white : Colors.black),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                          color: Get.isDarkMode
                              ? Colors.white30
                              : Colors.black38)),
                ),
              ),
            ),
            Spacer(
              flex: 10,
            )
          ],
        ),
      ),
    );
  }

  Future launchEmail({required String subject, required String message}) async {
    final url =
        'mailto:tejanimit1@gmail.com?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }
}
