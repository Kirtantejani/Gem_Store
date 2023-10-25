import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBarApp extends StatefulWidget {
  SearchBarApp({
    required this.ontap,
    super.key,
  });

  Function() ontap;

  @override
  State<SearchBarApp> createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  FocusNode myfocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Container(
            height: 45,
            width: MediaQuery.of(context).size.width * 0.70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Get.isDarkMode
                    ? Color.fromRGBO(35, 38, 47, 1)
                    : Color.fromRGBO(119, 126, 144, 0.1)),
            child: TextFormField(
              focusNode: myfocus,
              style: TextStyle(
                color: Get.isDarkMode
                    ? Color.fromRGBO(177, 181, 195, 1)
                    : Color.fromRGBO(119, 126, 144, 1),
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Get.isDarkMode
                      ? Color.fromRGBO(177, 181, 195, 1)
                      : Color.fromRGBO(119, 126, 144, 1),
                ),
                prefixIcon: IconButton(
                  onPressed: () {
                    myfocus.requestFocus();
                  },
                  icon: Icon(Icons.search_outlined),
                  color: Get.isDarkMode
                      ? Color.fromRGBO(177, 181, 195, 1)
                      : Color.fromRGBO(119, 126, 144, 1),
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        FloatingActionButton.small(
          backgroundColor:
              Get.isDarkMode ? Color.fromRGBO(35, 38, 47, 1) : Colors.white,
          onPressed: widget.ontap,
          child: Image.asset('assets/image/filter_button.png'),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        )
      ],
    );
  }
}
