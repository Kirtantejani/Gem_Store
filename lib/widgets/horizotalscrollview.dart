import 'package:flutter/cupertino.dart';

import '../Pages/storescreen/homescreen/resuabletext.dart';
import '../data/imagewithprice.dart';

class HorizontalScrollView extends StatelessWidget {
  const HorizontalScrollView({
    required this.text1,
    required this.text2,
    super.key,
  });
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        resuabletext(text1: text1, text2: text2),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
            height: 250,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: data[index],
                  );
                }),
          ),
        ),
      ],
    );
  }
}
