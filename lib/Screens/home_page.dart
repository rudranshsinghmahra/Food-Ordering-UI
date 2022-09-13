import 'package:flutter/material.dart';
import 'package:food_ordering_ui_flutter/Screens/orders_screen.dart';
import 'package:food_ordering_ui_flutter/Widgets/best_offers.dart';
import 'package:food_ordering_ui_flutter/Widgets/nearby_restaurants.dart';
import 'package:food_ordering_ui_flutter/Widgets/top_brands.dart';
import 'cart_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200,
                        ),
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.68,
                        child: TextField(
                          cursorHeight: 0,
                          cursorWidth: 0,
                          controller: searchController,
                          style: const TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey.shade400,
                            ),
                            hintText: "Search Restaurant or Food",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderScreen(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.network(
                          "http://cdn.onlinewebfonts.com/svg/img_355401.png",
                          fit: BoxFit.contain,
                        ),
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartScreen(),
                        ),
                      );
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: Image.network(
                            "https://img.icons8.com/ios-glyphs/344/shopping-cart.png",
                            fit: BoxFit.contain,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 8, right: 8, top: 15, bottom: 15),
          child: Column(
            children: const [
              TopBrandNearYou(),
              BestOfferForYou(),
              NearbyRestaurants(),
            ],
          ),
        ),
      ),
    );
  }
}
