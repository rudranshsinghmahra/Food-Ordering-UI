import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_ui_flutter/Screens/payments_screen.dart';
import 'package:food_ordering_ui_flutter/Widgets/cart_product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
              "My Cart",
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 30,
              width: 30,
            )
          ],
        ),
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "McDonald's",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Delivery Location",
                        style: TextStyle(fontWeight: FontWeight.w400)),
                    Text(
                      "Change",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.home),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 4.0, bottom: 3.0, left: 2.0),
                          child: Text("Home",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.0),
                          child: Text(
                              "Alpha I, Greater Noida, Uttar Pradesh 201012",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const CartProduct(
                  extraAddOn: true,
                ),
                const Divider(),
                const CartProduct(
                  extraAddOn: true,
                ),
                const Divider(),
                const CartProduct(
                  extraAddOn: false,
                ),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PaymentScreen()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Confirm Order",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
