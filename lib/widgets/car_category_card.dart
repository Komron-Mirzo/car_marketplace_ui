import 'package:flutter/material.dart';

class CarCategory extends StatelessWidget {
  const CarCategory({
    Key? key,
    required this.carPicture,
    required this.categoryName,
    required this.categoryText,
    required this.circleColor,
  }) : super(key: key);

  final String carPicture;
  final String categoryName;
  final String categoryText;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 0.0,
        bottom: 20.0,
        top: 0.0,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.225,
        width: MediaQuery.of(context).size.height * 0.20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            25.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 8.0,
              offset: const Offset(
                0,
                8,
              ),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: circleColor,
                    shape: BoxShape.circle,
                  ),
                  child: Container(),
                ),
                Image.asset(
                  carPicture,
                  width: 140.0,
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Column(
              children: [
                Text(
                  categoryName,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  categoryText,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
