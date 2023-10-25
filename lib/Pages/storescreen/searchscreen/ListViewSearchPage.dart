import 'package:flutter/material.dart';

import '../../../widgets/Theme.dart';
import '../../../widgets/resuablelisttile.dart';


class ListViewSearch extends StatefulWidget {
  ListViewSearch({super.key});

  @override
  State<ListViewSearch> createState() => _ListViewSearchState();
}

class _ListViewSearchState extends State<ListViewSearch> {
  List list = [
    [
      'Jacket',
      14.0,
      '128 Items',
      12.0,
      FontWeight.normal,
      Icons.keyboard_arrow_right_outlined
    ],
    [
      'Skirts',
      14.0,
      '40 Items',
      12.0,
      FontWeight.normal,
      Icons.keyboard_arrow_right_outlined
    ],
    [
      'Dresses',
      14.0,
      '36 Items',
      12.0,
      FontWeight.normal,
      Icons.keyboard_arrow_right_outlined
    ],
    [
      'Sweaters',
      14.0,
      '24 Items',
      12.0,
      FontWeight.normal,
      Icons.keyboard_arrow_right_outlined
    ],
    [
      'Jeans',
      14.0,
      '14 Items',
      12.0,
      FontWeight.normal,
      Icons.keyboard_arrow_right_outlined
    ],
    [
      'T-Shirts',
      14.0,
      '12 Items',
      12.0,
      FontWeight.normal,
      Icons.keyboard_arrow_right_outlined
    ],
    [
      'Pants',
      14.0,
      '9 Items',
      12.0,
      FontWeight.normal,
      Icons.keyboard_arrow_right_outlined
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.71,
      child: SingleChildScrollView(
        child: Themedark.searchpagebody == false
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResuableListTile(
                    tilename: 'CLOTHING',
                    imagename: 'assets/image/SearchPageimage1.png',
                    circlecolor: Color.fromRGBO(194, 199, 181, 0.5),
                    Cotainercolor: Color.fromRGBO(163, 167, 152, 1),
                    circlecolor2: Color.fromRGBO(194, 199, 181, 1),
                    list: list,
                  ),
                  ResuableListTile(
                    tilename: 'ACCESSORIES',
                    imagename: 'assets/image/SearchPageimage2.png',
                    circlecolor: Color.fromRGBO(156, 148, 146, 0.5),
                    Cotainercolor: Color.fromRGBO(137, 130, 128, 1),
                    circlecolor2: Color.fromRGBO(156, 148, 146, 1),
                    list: [],
                  ),
                  ResuableListTile(
                    tilename: 'SHOES',
                    imagename: 'assets/image/SearchPageimage3.png',
                    circlecolor: Color.fromRGBO(91, 113, 120, 0.5),
                    Cotainercolor: Color.fromRGBO(68, 86, 92, 1),
                    circlecolor2: Color.fromRGBO(91, 113, 120, 1),
                    list: [],
                  ),
                  ResuableListTile(
                    tilename: 'COLLECTION',
                    imagename: 'assets/image/SearchPageimage4.png',
                    circlecolor: Color.fromRGBO(209, 202, 205, 0.5),
                    Cotainercolor: Color.fromRGBO(185, 174, 178, 1),
                    circlecolor2: Color.fromRGBO(209, 202, 205, 1),
                    list: [],
                  ),
                ],
              )
            : Container(),
      ),
    );
  }
}
