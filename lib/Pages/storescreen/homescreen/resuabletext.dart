import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/big_text.dart';

class resuabletext extends StatefulWidget {
  const resuabletext({
    required this.text1,
    required this.text2,
    super.key,
  });
  final String text1;
  final String text2;

  @override
  State<resuabletext> createState() => _resuabletextState();
}

class _resuabletextState extends State<resuabletext> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(
              text: widget.text1,
              size: 20,
              color: Get.isDarkMode == true ? Colors.white : Colors.black,
              weight: FontWeight.bold),
          SizedBox(
            height: 5,
          ),
          BigText(
              text: 'Show all',
              size: 13,
              color: Get.isDarkMode == true
                  ? Color.fromRGBO(230, 232, 236, 1)
                  : Color.fromRGBO(155, 155, 155, 1),
              weight: FontWeight.normal)
        ],
      ),
    );
  }
}
