import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_ui_flutter/Widgets/order_card.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: ClipOval(
                child: Container(
                  color: Colors.black,
                  height: 30,
                  width: 30,
                  child: const Center(child: Icon(CupertinoIcons.back)),
                ),
              ),
            ),
            const Text(
              "My Order",
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 30,
              width: 30,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(
                      8.0,
                    ),
                    child: Text(
                      "Order History",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  const Divider(),
                  orderCard(
                    context: context,
                    imgUrl:
                        "https://i.pinimg.com/736x/48/e6/b8/48e6b860efa0e6256cb8d7579e843124.jpg",
                    restaurantName: "McDonald's",
                    rating: "1.0",
                    deliveryTime: "20min",
                    status: "On the Way",
                    foodItem: "Burn to Hell Pizza",
                    quantity: "4",
                    size: "Regular",
                    productPrice: "283.72",
                  ),
                  orderCard(
                    context: context,
                    imgUrl:
                        "https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png",
                    restaurantName: "Starbucks",
                    rating: "3.4",
                    deliveryTime: "15min",
                    status: "On the Way",
                    foodItem: "Mocha Cookie Crumble Frappuccino",
                    quantity: "1",
                    size: "Regular",
                    productPrice: "250.92",
                  ),
                  orderCard(
                    context: context,
                    imgUrl:
                        "https://static.wixstatic.com/media/fe6f47_b8420b8cc0ea422fa3dd09e5b9975599~mv2.png/v1/crop/x_0,y_163,w_1920,h_710/fill/w_260,h_96,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/g56-footer-logo.png",
                    restaurantName: "Gopal's 56",
                    rating: "4.0",
                    deliveryTime: "30min",
                    status: "Delivered",
                    foodItem: "Chole Bhature",
                    quantity: "2",
                    size: "Regular",
                    productPrice: "120",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
