import 'package:flutter/material.dart';

Widget counter() {
  return SizedBox(
    height: 40,
    width: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipOval(
          child: Container(
            color: Colors.grey.shade400,
            height: 20,
            width: 20,
            child: const Icon(
              Icons.remove,
              size: 18,
            ),
          ),
        ),
        const Text("1"),
        ClipOval(
          child: Container(
            color: Colors.red,
            height: 20,
            width: 20,
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 18,
            ),
          ),
        )
      ],
    ),
  );
}
