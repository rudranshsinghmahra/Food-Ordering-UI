import 'package:flutter/material.dart';

Widget buildOnBoardingPages(
    {required String urlImage,
    required String title,
    required String subTitle}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 80.0),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            width: 250,
            child: Image.network(urlImage),
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            subTitle,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
