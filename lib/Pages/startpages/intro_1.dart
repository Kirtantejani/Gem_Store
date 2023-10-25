import 'package:app/Pages/startpages/sign_up.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/big_text.dart';


class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  int index1 = 0;
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 120;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      if (pageController.page != null) {
        setState(() {
          _currentPageValue = pageController.page!;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.grey, statusBarIconBrightness: Brightness.dark));
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      head_container(context),
                    ],
                  ),
                  bottom_container(context)
                ],
              ),
              intro_image(context)
            ],
          ),
        ),
      ),
    );
  }

  Container bottom_container(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color.fromRGBO(70, 68, 71, 1.0)),
    );
  }

  Container head_container(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color.fromRGBO(229, 229, 229, 1.0)),
    );
  }

  Stack intro_image(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18),
                height: MediaQuery.of(context).size.height * 0.70,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, _currentPageValue) {
                      return _buildPageItem(_currentPageValue);
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0128,
              ),
              DotsIndicator(
                dotsCount: 3,
                position: _currentPageValue.toInt(),
                decorator: DotsDecorator(
                  activeColor: Colors.white,
                  color: Colors.white30,
                  size: Size.square(5.0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01923,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.0641,
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: BigText(
                      text: 'Shopping Now',
                      size: MediaQuery.of(context).size.height * 0.02051,
                      weight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.0231),
            child: BigText(
                text: index == 0
                    ? 'Discover something new'
                    : index == 1
                        ? 'Update trendy outfit'
                        : 'Explore your true style',
                size: MediaQuery.of(context).size.height * 0.02564,
                color: Colors.black,
                weight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          BigText(
              text: index1 == 0
                  ? 'Special new arrivals just for you'
                  : index1 == 1
                      ? 'Favorite brands and hottest trends'
                      : 'Relax and let us bring the style to you',
              size: MediaQuery.of(context).size.height * 0.01794,
              color: Colors.black,
              weight: FontWeight.normal),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.70,
              height: MediaQuery.of(context).size.height * 0.50,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Image.asset(
                  index == 0
                      ? 'assets/image/intro1_image.png'
                      : index == 1
                          ? 'assets/image/intro2_image.png'
                          : 'assets/image/intro3_image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
