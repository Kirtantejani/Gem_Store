import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BigText extends StatelessWidget {
  const BigText(
      {super.key,
      required this.text,
      required this.size,
      required this.color,
      required this.weight});
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: weight),
    );
  }
}

class ResuableImage extends StatelessWidget {
  const ResuableImage(
      {required this.image,
      required this.text,
      required this.price,
      super.key});
  final String text;
  final String price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Get.isDarkMode == true
                  ? Colors.white
                  : Colors.grey.withOpacity(0.3),
              child: Image.asset(
                  height: MediaQuery.of(context).size.height * .25,
                  width: MediaQuery.of(context).size.width * 0.37,
                  fit: BoxFit.cover,
                  image),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BigText(
              text: text,
              size: 12,
              color: Theme.of(context)
                  .bottomAppBarColor, // color: Get.isDarkMode == true
              //     ? Color.fromRGBO(252, 252, 253, 1)
              //     : Colors.black,
              weight: FontWeight.normal),
          SizedBox(
            height: 2,
          ),
          BigText(
              text: price,
              size: 16,
              color: Get.isDarkMode == true
                  ? Color.fromRGBO(252, 252, 253, 1)
                  : Colors.black,
              weight: FontWeight.bold)
        ],
      ),
    );
  }
}

class ResuableImageVertical extends StatelessWidget {
  const ResuableImageVertical(
      {required this.image,
      required this.text,
      required this.price,
      super.key});

  final String text;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 80,
        width: 207,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.error),
        // color: Get.isDarkMode == true
        //     ? Color.fromRGBO(20, 20, 22, 1)
        //     : Color.fromRGBO(249, 249, 249, 1)),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Center(
                  child: Image.asset(
                      fit: BoxFit.fill, height: 80, width: 80, image),
                )),
            SizedBox(
              width: 9,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                BigText(
                    text: text,
                    size: 12,
                    color: Get.isDarkMode == true
                        ? Color.fromRGBO(252, 252, 253, 1)
                        : Colors.black,
                    weight: FontWeight.w600),
                SizedBox(
                  height: 12,
                ),
                BigText(
                    text: price,
                    size: 16,
                    color: Get.isDarkMode == true
                        ? Color.fromRGBO(252, 252, 253, 1)
                        : Colors.black,
                    weight: FontWeight.bold)
              ],
            )
          ],
        ),
      ),
    );
  }
}
