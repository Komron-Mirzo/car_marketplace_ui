import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'colors.dart';

class CarItemList extends StatelessWidget {
  const CarItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17.0),
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          25.0,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/car1.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1988",
                style: TextStyle(
                  color: AppColor.secondTextColor,
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Porsche 911",
                style: TextStyle(
                  color: AppColor.mainTextColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text(
                    "100k Mi",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: AppColor.secondTextColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Black",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: AppColor.secondTextColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "\$ 86,556",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: AppColor.secondTextColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.solidHeart,
                  size: 20.0,
                  color: AppColor.heartGreyColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
