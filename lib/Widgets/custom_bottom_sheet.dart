import 'package:flutter/material.dart';
import 'package:food_ordering_ui_flutter/Widgets/pizza_radio_selector.dart';

import 'counter.dart';

Widget customBottomSheet(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.6,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Burn To Hell Pizza",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: Image.network(
                  "https://i.pinimg.com/originals/e4/1f/f3/e41ff3b10a26b097602560180fb91a62.png",
                ),
              ),
            ],
          ),
          Text(
            "Hot & Garlic Dip, Jalapenos, Mushrooms, Olives & Capsicum.",
            style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Rs 283.45",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Row(
            children: [
              Text(
                "Rs 300.45",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey.shade400),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "30% OFF",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Quantity",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
              counter(),
            ],
          ),
          const Divider(),
          const Text(
            "Size",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const PizzaRadioSelector(
            size: "Regular",
            rate: "283.45",
          ),
          const PizzaRadioSelector(
            size: "Medium",
            rate: "383.45",
          ),
          const PizzaRadioSelector(
            size: "Large",
            rate: "483.45",
          ),
          const PizzaRadioSelector(
            size: "Giant",
            rate: "1283.45",
          ),
          const SizedBox(
            height: 18,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const StadiumBorder()),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
