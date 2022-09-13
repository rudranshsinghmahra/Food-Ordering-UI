import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_ui_flutter/Widgets/payment_methods.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
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
              "Payment",
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
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0, top: 30, left: 8),
                  child: Text(
                    "Payment Method",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                paymentMethod(
                  urlImage:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7FIaFhquzkxqoUdFl3aQ7Ozg_4k4WNxpjQ&usqp=CAU",
                  paymentMethod: "Cash On Delivery",
                  context: context,
                ),
                paymentMethod(
                  urlImage:
                      "https://assets.stickpng.com/images/580b57fcd9996e24bc43c530.png",
                  paymentMethod: "PayPal",
                  context: context,
                ),
                paymentMethod(
                  urlImage:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/8/89/Razorpay_logo.svg/2560px-Razorpay_logo.svg.png",
                  paymentMethod: "RazorPay",
                  context: context,
                ),
                paymentMethod(
                  urlImage:
                      "https://getinvoice.co/assets/images/logo/partners/paystack.png",
                  paymentMethod: "Paystack",
                  context: context,
                ),
                paymentMethod(
                  urlImage:
                      "https://logos-world.net/wp-content/uploads/2022/05/Flutterwave-Symbol.png",
                  paymentMethod: "Flutterware",
                  context: context,
                ),
                paymentMethod(
                  urlImage:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Stripe_Logo%2C_revised_2016.svg/2560px-Stripe_Logo%2C_revised_2016.svg.png",
                  paymentMethod: "Stripe",
                  context: context,
                ),
                paymentMethod(
                  urlImage:
                      "https://download.logo.wine/logo/Paytm/Paytm-Logo.wine.png",
                  paymentMethod: "Paytm",
                  context: context,
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0, top: 30, left: 8),
                  child: Text(
                    "Delivery Location",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, bottom: 12.0, right: 8.0, left: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 3,
                            ),
                            Text("Other"),
                            Text("GMDC Guest House"),
                            Text("Road Bhuj Gujarat 370001"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20.0, top: 30, left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Pay Using",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text(
                          "Paytm",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, shape: const StadiumBorder()),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Place Order",
                            style: TextStyle(fontSize: 16),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Total Pay :",
                                  style: TextStyle(fontSize: 12)),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Rs 287.87", style: TextStyle(fontSize: 12))
                            ],
                          )
                        ],
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
