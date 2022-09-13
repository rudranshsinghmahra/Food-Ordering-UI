import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_ui_flutter/Widgets/food_items_card.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int tag = 1;
  List<String> options = [
    'New Launches',
    'Paratha Pizza',
    'Veg Pizza',
    'Beverages',
    'Chicken Lovers Pizza',
    'Sides',
    'Pizza Mania',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              child: SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  "https://www.freepnglogos.com/uploads/dominos-png-logo/starting-dominos-pizza-franchise-png-logo-3.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: 30,
              child: PhysicalModel(
                elevation: 5,
                shadowColor: Colors.black,
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                child: SizedBox(
                  height: 170,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Domino's",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Image.network(
                                        "https://i.pinimg.com/736x/e4/1f/f3/e41ff3b10a26b097602560180fb91a62.jpg"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Image.network(
                                        "https://img.indiafilings.com/learn/wp-content/uploads/2016/01/12010903/Non-Veg-Symbol.jpg"),
                                  ),
                                )
                              ],
                            ),
                            ClipOval(
                              child: Container(
                                color: Colors.grey.shade400,
                                height: 30,
                                width: 30,
                                child: Icon(
                                  Icons.heart_broken,
                                  color: Colors.grey.shade300,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Text(
                              "Ground Floor G-34AB Kalkaji: ",
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            const Text(
                              "8km",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.star_outline_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "3.0",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Row(
                              children: const [
                                Icon(Icons.delivery_dining_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "30min",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 360,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ChipsChoice<int>.single(
                      value: tag,
                      onChanged: (val) => setState(() => tag = val),
                      choiceItems: C2Choice.listFrom<int, String>(
                        source: options,
                        value: (i, v) => i,
                        label: (i, v) => v,
                      ),
                      choiceStyle: const C2ChoiceStyle(
                        color: Colors.black,
                      ),
                      choiceActiveStyle: const C2ChoiceStyle(
                          color: Colors.white,
                          backgroundColor: Colors.red,
                          showCheckmark: false),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 12),
                            child: Text(
                              "Pizza",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          FoodItemCard(),
                          FoodItemCard(),
                          FoodItemCard(),
                          FoodItemCard(),
                          FoodItemCard(),
                          FoodItemCard(),
                          FoodItemCard(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
