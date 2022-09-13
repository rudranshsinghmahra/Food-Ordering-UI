import 'package:flutter/material.dart';
import 'package:food_ordering_ui_flutter/Screens/track_order_screen.dart';

Widget orderCard(
    {imgUrl,
    restaurantName,
    rating,
    deliveryTime,
    status,
    foodItem,
    quantity,
    size,
    productPrice,
    context}) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.network(imgUrl),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.63,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              restaurantName,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.network(
                                    "https://i.pinimg.com/originals/e4/1f/f3/e41ff3b10a26b097602560180fb91a62.png"),
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.network(
                                    "https://img.indiafilings.com/learn/wp-content/uploads/2016/01/12010903/Non-Veg-Symbol.jpg"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                        ),
                        Text(
                          rating,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.delivery_dining_outlined,
                          size: 20,
                        ),
                        Text(
                          deliveryTime,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: status == "On the Way"
                              ? Colors.cyan
                              : Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            status,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Text(
                  foodItem,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(" x ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(quantity, style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Text(
                  "Size: ",
                  style: TextStyle(color: Colors.grey.shade400),
                ),
                Text(
                  size,
                  style: TextStyle(color: Colors.grey.shade400),
                )
              ],
            ),
          ),
          Row(
            children: [
              const Text("Rs "),
              Text(
                productPrice,
                style: const TextStyle(
                    color: Colors.red, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Total Pay",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Row(
                children: [
                  const Text("Rs ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(
                      (double.parse(quantity) * double.parse(productPrice))
                          .toStringAsFixed(2),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.41,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const StadiumBorder(),
                    side: const BorderSide(width: 2, color: Colors.black),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.41,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: const BorderSide(width: 2, color: Colors.black),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrackOrderScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Track Order",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
