import 'package:flutter/material.dart';

import 'add_ons.dart';
import 'counter.dart';

class CartProduct extends StatefulWidget {
  const CartProduct({Key? key, required this.extraAddOn}) : super(key: key);
  final bool extraAddOn;

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    bool extraAddOn = widget.extraAddOn;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 90,
          width: 90,
          // color: Colors.red,
          child: Image.network(
            "https://www.mcdonaldsindia.com/trulyindianburger/images/chicken-maharaja-mac.png",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: const Text(
                      "Cheese Lava American Chicken Burger",
                      style: TextStyle(fontWeight: FontWeight.w500),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Icon(Icons.cancel_outlined)
                ],
              ),
              counter(),
              const Text(
                "Rs. 291.35",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              if (extraAddOn)
                const Text(
                  "Extra add-on",
                  style: TextStyle(fontSize: 18),
                ),
              if (extraAddOn)
                const SizedBox(
                  height: 15,
                ),
              if (extraAddOn) addOns("Double Chicken Patty", "Rs. 114.72"),
              if (extraAddOn) addOns("Extra Cheese", "Rs. 74.02"),
            ],
          ),
        )
      ],
    );
  }
}
