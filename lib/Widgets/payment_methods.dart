import 'package:flutter/material.dart';

Widget paymentMethod(
    {required String urlImage, required String paymentMethod, context}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.network(
                      urlImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    paymentMethod,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  )
                  ],
              ),
              Radio(
                value: paymentMethod,
                groupValue: paymentMethod,
                onChanged: (value) {},
              )
            ],
          ),
        ),
      ),
    ),
  );
}
