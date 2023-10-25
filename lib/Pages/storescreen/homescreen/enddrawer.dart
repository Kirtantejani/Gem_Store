import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/big_text.dart';

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class EndDrawer extends StatefulWidget {
  const EndDrawer({super.key});

  @override
  State<EndDrawer> createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  TextEditingController dropdowncontroller = TextEditingController();

  int starrate = 5;
  RangeValues values = RangeValues(10, 100);
  RangeLabels labels = RangeLabels('\u002410', '\u0024100');
  double start = 10;
  double end = 100;
  final _sliderLabels = <String>[
    '10',
    '20',
    '30',
    '40',
    '50',
    '60',
    '70',
    '80',
    '90',
    '100',
  ];
  final _color = [
    Colors.yellow,
    Colors.deepOrange,
    Color.fromRGBO(22, 47, 4, 1),
    Get.isDarkMode ? Colors.white : Colors.black,
    Colors.brown,
    Colors.deepPurple
  ];
  List dropdownlist = [
    'Crop Tops',
    'Dresses',
    'T-Shirt',
  ];
  List discount = ['50', '40', '30', '25'];
  @override
  Widget build(BuildContext context) {
    String selectedString = dropdownlist[1];
    return Drawer(
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Row(
              children: [
                BigText(
                    text: 'Filter',
                    size: 20,
                    color: Get.isDarkMode
                        ? Color.fromRGBO(252, 252, 253, 1)
                        : Color.fromRGBO(51, 48, 46, 1),
                    weight: FontWeight.bold),
                Spacer(),
                Image.asset('assets/image/filter_button.png'),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Divider(
              height: 1,
              color: Get.isDarkMode
                  ? Color.fromRGBO(35, 38, 47, 1)
                  : Color.fromRGBO(243, 243, 246, 1),
              thickness: 1,
            ),
            Spacer(
              flex: 1,
            ),
            BigText(
                text: 'Price',
                size: 14,
                color: Get.isDarkMode
                    ? Color.fromRGBO(252, 252, 253, 1)
                    : Color.fromRGBO(51, 48, 46, 1),
                weight: FontWeight.normal),
            Spacer(
              flex: 1,
            ),
            RangeSlider(
              min: 10,
              max: 100,
              divisions: 9,
              values: values,
              inactiveColor: Get.isDarkMode
                  ? Color.fromRGBO(53, 57, 69, 1)
                  : Color.fromRGBO(243, 243, 246, 1),
              activeColor:
                  Get.isDarkMode ? Colors.white : Color.fromRGBO(51, 48, 46, 1),
              onChanged: (RangeValues value) {
                setState(() {
                  values = value;
                  start = value.start.roundToDouble();
                  end = value.end.roundToDouble();
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < _sliderLabels.length; i++)
                  Get.isDarkMode
                      ? _sliderLabels[i] == start.toInt().toString() ||
                              _sliderLabels[i] == end.toInt().toString()
                          ? Text(
                              '\u0024' + _sliderLabels[i],
                              style: TextStyle(color: Colors.white),
                            )
                          : Text(
                              '\u0024' + _sliderLabels[i],
                              style: TextStyle(color: Colors.black),
                            )
                      : _sliderLabels[i] == start.toInt().toString() ||
                              _sliderLabels[i] == end.toInt().toString()
                          ? Text(
                              '\u0024' + _sliderLabels[i],
                              style: TextStyle(color: Colors.black),
                            )
                          : Text(
                              '\u0024' + _sliderLabels[i],
                              style: TextStyle(color: Colors.white),
                            )
              ],
            ),
            Spacer(
              flex: 2,
            ),
            BigText(
                text: 'Color',
                size: 14,
                color: Get.isDarkMode
                    ? Color.fromRGBO(252, 252, 253, 1)
                    : Color.fromRGBO(51, 48, 46, 1),
                weight: FontWeight.normal),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < _color.length; i++)
                  Wrap(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: _color[i]),
                      ),
                    ],
                  )
              ],
            ),
            Spacer(
              flex: 2,
            ),
            BigText(
                text: 'Star Rating',
                size: 14,
                color: Get.isDarkMode
                    ? Color.fromRGBO(252, 252, 253, 1)
                    : Color.fromRGBO(51, 48, 46, 1),
                weight: FontWeight.normal),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 1; i <= 5; i++)
                  Wrap(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.error,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Get.isDarkMode
                                    ? Color.fromRGBO(252, 252, 253, 1)
                                    : Color.fromRGBO(67, 72, 75, 1))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              size: 10,
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Color.fromRGBO(67, 72, 75, 1),
                            ),
                            Text(
                              i.toString(),
                              style: TextStyle(
                                  color: Get.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
              ],
            ),
            Spacer(
              flex: 2,
            ),
            BigText(
                text: 'Category',
                size: 14,
                color: Get.isDarkMode
                    ? Color.fromRGBO(252, 252, 253, 1)
                    : Color.fromRGBO(51, 48, 46, 1),
                weight: FontWeight.normal),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Text(
                  //   '$selectedString',
                  //   style: TextStyle(
                  //       color: Get.isDarkMode ? Colors.white : Colors.black),
                  // ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextFormField(
                        controller: dropdowncontroller,
                        readOnly: true,
                        autofocus: false,
                        style: TextStyle(
                            color:
                                Get.isDarkMode ? Colors.white : Colors.black),
                        cursorColor: Get.isDarkMode
                            ? Colors.grey[100]
                            : Colors.grey[700],
                        decoration: InputDecoration(
                            hintText: '$selectedString',
                            hintStyle: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    // color: context.theme.backgroundColor,
                                    width: 0)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    // color: context.theme.backgroundColor,
                                    width: 0))),
                      ),
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      elevation: 0,
                      icon: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.grey,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          selectedString = value!;
                        });
                      },
                      items:
                          dropdownlist.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem<String>(
                          value: value.toString(),
                          child: Text(
                            value.toString(),
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.black
                                    : Colors.white),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
            BigText(
                text: 'Discount',
                size: 12,
                color: Get.isDarkMode ? Colors.white : Colors.black,
                weight: FontWeight.normal),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      containerdiscount(0),
                      SizedBox(
                        height: 10,
                      ),
                      containerdiscount(2)
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      containerdiscount(1),
                      SizedBox(
                        height: 10,
                      ),
                      containerdiscount(3)
                    ],
                  )
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Get.isDarkMode
                            ? Color.fromRGBO(252, 252, 253, 1)
                            : Color.fromRGBO(20, 20, 22, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: BigText(
                      size: 14,
                      color: Get.isDarkMode
                          ? Color.fromRGBO(20, 20, 22, 1)
                          : Color.fromRGBO(252, 252, 253, 1),
                      text: 'Apply',
                      weight: FontWeight.normal,
                    )),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  Container containerdiscount(int index) {
    return Container(
      height: 30,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Get.isDarkMode ? Colors.black : Colors.white,
          border:
              Border.all(color: Get.isDarkMode ? Colors.white : Colors.black)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              discount[index] + '% off',
              style: TextStyle(
                  color: Get.isDarkMode ? Colors.white : Colors.black),
            ),
            Icon(
              Icons.close,
              size: 18,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
