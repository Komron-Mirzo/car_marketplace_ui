import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 0.0,
        left: 0.0,
        right: 0.0,
        bottom: MediaQuery.of(context).size.height * 0.45,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3D41B6),
                Color(0xFF5B47EC),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(
                450,
                220,
              ),
              bottomRight: Radius.elliptical(450, 300),
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.06,
        left: 0.0,
        right: 0.0,
        bottom: MediaQuery.of(context).size.height * 0.88,
        child: Container(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
          ),
          child: Row(
            children: const [
              Icon(
                FontAwesomeIcons.bars,
                color: Colors.white,
              ),
              SizedBox(
                width: 50.0,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "SEARCH",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              Icon(
                FontAwesomeIcons.circleUser,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.14,
        left: 25.0,
        right: 0.0,
        bottom: 0.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "FIND",
              style: TextStyle(
                fontSize: 12.0,
                color: AppColor.heartGreyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColor.heartRedColor,
                    width: 3.0,
                  ),
                ),
              ),
              child: const Text(
                "Chevrolet Captive",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "SORT BY",
              style: TextStyle(
                fontSize: 12.0,
                color: AppColor.heartGreyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColor.heartRedColor,
                    width: 3.0,
                  ),
                ),
              ),
              child: const Text(
                "Price, Low to High",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.35,
        left: 0.0,
        right: 0.0,
        bottom: MediaQuery.of(context).size.height * 0.15,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/json/car_list.json'),
              builder: (context, snapshot) {
                // Decode the JSON

                var newData = json.decode(snapshot.data.toString());

                return CarouselSlider.builder(
                  itemCount: newData.length,
                  itemBuilder: (context, index, id) {
                    return Container(
                      padding: const EdgeInsets.all(17.0),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(newData[index]['img']),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              newData[index]['year'],
                              style: TextStyle(
                                color: AppColor.secondTextColor,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Text(
                                newData[index]['name'],
                                style: TextStyle(
                                  fontSize: 24.0,
                                  color: AppColor.mainTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Text(
                                newData[index]['price'],
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: AppColor.mainTextColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: AppColor.backgroundColor,
                                ),
                                child: Center(
                                  child: Text(newData[index]['speed']),
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Container(
                                height: 40.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: AppColor.backgroundColor,
                                ),
                                child: Center(
                                  child: Text(newData[index]['color']),
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Container(
                                height: 40.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: AppColor.backgroundColor,
                                ),
                                child: Center(
                                  child: Text(newData[index]['location']),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: MediaQuery.of(context).size.height,
                    autoPlayInterval: const Duration(seconds: 3),
                    reverse: false,
                    aspectRatio: 5.0,
                  ),
                );
              }),
        ),
      ),
    ]);
  }
}
