import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../widgets/big_text.dart';

class NewCollect extends StatefulWidget {
  const NewCollect({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  State<NewCollect> createState() => _NewCollectState();
}

class _NewCollectState extends State<NewCollect> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          // color: Colors.red,
          color: Get.isDarkMode == true
              ? Color.fromRGBO(35, 38, 47, 1)
              : Color.fromRGBO(248, 248, 250, 1),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 170.0, top: 10),
          child: Container(
            height: 165,
            width: 165,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Get.isDarkMode == true
                    ? Color.fromRGBO(119, 126, 144, 0.5)
                    : Color.fromRGBO(226, 226, 226, 0.50)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 190.0, top: 30),
          child: Container(
            height: 128,
            width: 128,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Get.isDarkMode
                    ? Color.fromRGBO(119, 126, 144, 0.5)
                    : Color.fromRGBO(226, 226, 226, 1)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200.0, top: 10),
          child: Container(
              width: 120,
              height: 185,
              child: Image.asset(
                  fit: BoxFit.fitHeight, 'assets/image/image_mainpage4.png')),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 48.0, top: 35),
              child: BigText(
                  text: '| NEW COLLECTION',
                  size: 12,
                  color: Get.isDarkMode == true
                      ? Color.fromRGBO(177, 187, 195, 1)
                      : Color.fromRGBO(67, 72, 75, 1),
                  weight: FontWeight.normal),
            ),
            SizedBox(
              height: 23,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: BigText(
                  text: 'HANG OUT \n& PARTY',
                  size: 20,
                  color: Get.isDarkMode == true
                      ? Color.fromRGBO(230, 232, 236, 1)
                      : Color.fromRGBO(53, 57, 69, 1),
                  weight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
