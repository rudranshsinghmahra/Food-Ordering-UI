import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

Widget customStepper() {
  return Padding(
    padding: const EdgeInsets.only(left: 18.0, top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Icon(
              Icons.circle_outlined,
              size: 15,
            ),
            const SizedBox(
              width: 40,
              height: 30,
              child: Center(
                child: DottedLine(
                  direction: Axis.vertical,
                  lineLength: 30,
                  lineThickness: 2.0,
                  dashLength: 4.0,
                  dashColor: Colors.black,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(12)),
              child: const Icon(
                Icons.check,
                size: 25,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Order Pending",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Please wait untill you order\ngets accepted by the restaurant",
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          width: 40,
          height: 30,
          child: Center(
            child: DottedLine(
              direction: Axis.vertical,
              lineLength: 30,
              lineThickness: 2.0,
              dashLength: 4.0,
              dashColor: Colors.black,
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(12)),
              child: const Icon(
                Icons.check,
                size: 25,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Order Confirmed",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Please wait untill you order\ngets accepted by the restaurant",
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          width: 40,
          height: 30,
          child: Center(
            child: DottedLine(
              direction: Axis.vertical,
              lineLength: 30,
              lineThickness: 2.0,
              dashLength: 4.0,
              dashColor: Colors.black,
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(12)),
              child: const Icon(
                Icons.check,
                size: 25,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Order Preparing",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Please wait untill you order\ngets accepted by the restaurant",
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          width: 40,
          height: 30,
          child: Center(
            child: DottedLine(
              direction: Axis.vertical,
              lineLength: 30,
              lineThickness: 2.0,
              dashLength: 4.0,
              dashColor: Colors.black,
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(12)),
              child: const Icon(
                Icons.check,
                size: 25,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Order out for Delivery",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Please wait untill you order\ngets accepted by the restaurant",
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          width: 40,
          height: 30,
          child: Center(
            child: DottedLine(
              direction: Axis.vertical,
              lineLength: 30,
              lineThickness: 2.0,
              dashLength: 4.0,
              dashColor: Colors.black,
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: const Icon(
                Icons.check,
                size: 25,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Order Delivered",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Please wait untill you order\ngets accepted by the restaurant",
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: const [
            SizedBox(
              width: 40,
              height: 30,
              child: Center(
                child: DottedLine(
                  direction: Axis.vertical,
                  lineLength: 30,
                  lineThickness: 2.0,
                  dashLength: 4.0,
                  dashColor: Colors.black,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ),
            ),
            Icon(
              Icons.circle_outlined,
              size: 15,
            ),
          ],
        ),
      ],
    ),
  );
}
