import 'dart:ui';
import 'car_list.dart';
import 'colors.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'car_category_card.dart';

class CarStorePage extends StatefulWidget {
  const CarStorePage({
    Key? key,
  }) : super(key: key);

  @override
  State<CarStorePage> createState() => _CarStorePageState();
}

class _CarStorePageState extends State<CarStorePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 0.0,
        left: 0.0,
        right: 0.0,
        bottom: MediaQuery.of(context).size.height * 0.65,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3D41B6),
                Color(0xFF5B47EC),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(
                300,
                100,
              ),
              bottomRight: Radius.elliptical(750, 275),
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.04,
        left: 0.0,
        right: 0.0,
        bottom: MediaQuery.of(context).size.height * 0.90,
        child: Container(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
          ),
          child: Row(
            children: [
              const Icon(
                FontAwesomeIcons.bars,
                color: Colors.white,
              ),
              const SizedBox(
                width: 50.0,
              ),
              Expanded(
                child: Container(
                  height: 45.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3E3EB7),
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      SizedBox(
                        width: 55.0,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 50.0,
              ),
              const Icon(
                FontAwesomeIcons.circleUser,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.15,
        left: 25.0,
        right: 0.0,
        bottom: 0.0,
        child: const Text(
          "Browse",
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.25,
        left: 0.0,
        right: 0.0,
        bottom: MediaQuery.of(context).size.height * 0.5,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              CarCategory(
                carPicture: 'assets/car1.png',
                categoryName: 'Ford',
                categoryText: '245 cars',
                circleColor: AppColor.redCircleColor,
              ),
              CarCategory(
                carPicture: 'assets/car2Toyota.png',
                categoryName: 'Toyota',
                categoryText: '808 cars',
                circleColor: AppColor.purpleCircleColor,
              ),
              CarCategory(
                carPicture: 'assets/car3Tesla.png',
                categoryName: 'Tesla',
                categoryText: '1250 cars',
                circleColor: AppColor.yellowCircleColor,
              ),
              CarCategory(
                carPicture: 'assets/car4Bmw.png',
                categoryName: 'BMW',
                categoryText: '189 cars',
                circleColor: AppColor.blueCircleColor,
              ),
              CarCategory(
                carPicture: 'assets/car5Chevro.png',
                categoryName: 'Chevrolet',
                categoryText: '2487 cars',
                circleColor: AppColor.redPurpleCircleColor,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.52,
        left: 25.0,
        right: 25.0,
        bottom: 0.0,
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  FontAwesomeIcons.solidHeart,
                  color: Colors.red,
                  size: 25.0,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Text(
                  "Saved",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: AppColor.mainTextColor,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "16 saved cars",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: AppColor.secondTextColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  },
                ),
                child: Expanded(
                  child: ListView(
                    children: const [
                      CarItemList(),
                      SizedBox(
                        height: 15.0,
                      ),
                      CarItemList(),
                      SizedBox(
                        height: 15.0,
                      ),
                      CarItemList(),
                      SizedBox(
                        height: 15.0,
                      ),
                      CarItemList(),
                      SizedBox(
                        height: 15.0,
                      ),
                      CarItemList(),
                      SizedBox(
                        height: 15.0,
                      ),
                      CarItemList(),
                      SizedBox(
                        height: 15.0,
                      ),
                      CarItemList(),
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                    padding: EdgeInsets.all(10),
                  ),
                )),
          ],
        ),
      ),
    ]);
  }
}
