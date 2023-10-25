import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'big_text.dart';

class ResuableListTile extends StatefulWidget {
  ResuableListTile({
    required this.tilename,
    required this.imagename,
    required this.circlecolor,
    required this.Cotainercolor,
    required this.circlecolor2,
    required this.list,
    super.key,
  });
  final String tilename;
  final Color Cotainercolor;
  final Color circlecolor;
  final String imagename;
  final Color circlecolor2;
  final List list;
  @override
  State<ResuableListTile> createState() => _ResuableListTileState();
}

class _ResuableListTileState extends State<ResuableListTile> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ExpansionTileItem(
        // initiallyExpanded: true,
        collapsedIconColor: Colors.transparent,
        iconColor: Colors.transparent,
        isHasTrailing: false,
        title: Container(
          height: 125,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: widget.Cotainercolor),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.52, top: 10),
                child: Container(
                  height: 105,
                  width: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: widget.circlecolor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .56, top: 25),
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: widget.circlecolor2),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: BigText(
                      text: widget.tilename,
                      color: CupertinoColors.white,
                      weight: FontWeight.bold,
                      size: 16,
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  Image.asset(widget.imagename),
                  Spacer(
                    flex: 1,
                  )
                ],
              ),
            ],
          ),
        ),
        children: [
          for (int x = 0; x < widget.list.length; x++)
            x == 3 | 4
                ? Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    child: ListTile(
                      title: Row(
                        children: [
                          BigText(
                              text: widget.list[x][0],
                              size: widget.list[x][1],
                              color: Get.isDarkMode
                                  ? Color.fromRGBO(252, 252, 253, 1)
                                  : Colors.black,
                              weight: widget.list[x][4]),
                          Spacer(),
                          BigText(
                              text: widget.list[x][2],
                              size: widget.list[x][3],
                              color: Get.isDarkMode
                                  ? Color.fromRGBO(252, 252, 253, 1)
                                  : Colors.black,
                              weight: FontWeight.normal),
                          Icon(widget.list[x][5])
                        ],
                      ),
                    ),
                  )
                : ListTile(
                    title: Row(
                      children: [
                        BigText(
                            text: widget.list[x][0],
                            size: widget.list[x][1],
                            color: Get.isDarkMode
                                ? Color.fromRGBO(252, 252, 253, 1)
                                : Colors.black,
                            weight: widget.list[x][4]),
                        Spacer(),
                        BigText(
                            text: widget.list[x][2],
                            size: widget.list[x][3],
                            color: Get.isDarkMode
                                ? Color.fromRGBO(252, 252, 253, 1)
                                : Colors.black,
                            weight: FontWeight.normal),
                        Icon(widget.list[x][5])
                      ],
                    ),
                  ),
        ],
      ),
    );
  }
}
