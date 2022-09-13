import 'package:flutter/material.dart';

Widget startEndDelivery(point, address) {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        height: 40,
        width: 40,
        child: const Center(
          child: Icon(
            Icons.location_on,
            color: Colors.red,
            size: 35,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              point,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
            Text(
              address,
              style: const TextStyle(color: Colors.white70),
            )
          ],
        ),
      )
    ],
  );
}
