import 'package:flutter/material.dart';

Widget addOns(item, price) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        item,
        style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 13,
            fontWeight: FontWeight.w500),
      ),
      Text(
        price,
        style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        height: 15,
      ),
    ],
  );
}
