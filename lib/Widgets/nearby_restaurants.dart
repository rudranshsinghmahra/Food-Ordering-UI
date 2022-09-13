import 'package:flutter/material.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Restaurants Nearby",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                restaurants(
                  name: "Pizza Connection",
                  address: "J-4/91, DDA Flats Kalkaji, Block J 4",
                  rating: "4.2",
                  deliveryTime: "35min",
                  url:
                      "https://www.andiccio24.co.za/wp-content/uploads/2017/09/preloader.png",
                  context: context,
                ),
                restaurants(
                  name: "Om Sweets & Snacks",
                  address: "GL - 23, SHAHEED BHAGAT SINGH",
                  rating: "4.5",
                  deliveryTime: "20min",
                  url:
                      "http://www.omsweets.websitedekho.com/assets/images/logo.png",
                  context: context,
                ),
                restaurants(
                  name: "Captain Grub",
                  address: "DLF Phase 1, Gurgaon",
                  rating: "4.6",
                  deliveryTime: "30min",
                  url:
                      "https://lh3.googleusercontent.com/kikChTLEFj8p2YTlQAkYyJk6oWdg7GeZfhnyzZsRa_Zeu1dZY1g-hwT7b148xATH3-Cb-aLFUTCYePaVUE6U0YxsqNI=w512",
                  context: context,
                ),
                restaurants(
                  name: "Wendy's",
                  address: "Krishna Market, Block H, Kalkaji",
                  rating: "4.1",
                  deliveryTime: "30min",
                  url:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/3/32/Wendy%27s_full_logo_2012.svg/1200px-Wendy%27s_full_logo_2012.svg.png",
                  context: context,
                ),
                restaurants(
                  name: "Om Sweets & Snacks",
                  address: "GL - 23, SHAHEED BHAGAT SINGH",
                  rating: "4.5",
                  deliveryTime: "20min",
                  url:
                      "http://www.omsweets.websitedekho.com/assets/images/logo.png",
                  context: context,
                ),
                restaurants(
                  name: "Captain Grub",
                  address: "DLF Phase 1, Gurgaon",
                  rating: "4.6",
                  deliveryTime: "30min",
                  url:
                      "https://lh3.googleusercontent.com/kikChTLEFj8p2YTlQAkYyJk6oWdg7GeZfhnyzZsRa_Zeu1dZY1g-hwT7b148xATH3-Cb-aLFUTCYePaVUE6U0YxsqNI=w512",
                  context: context,
                ),
                restaurants(
                  name: "Pizza Connection",
                  address: "J-4/91, DDA Flats Kalkaji, Block J 4",
                  rating: "4.2",
                  deliveryTime: "35min",
                  url:
                      "https://www.andiccio24.co.za/wp-content/uploads/2017/09/preloader.png",
                  context: context,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget restaurants(
      {required String name,
      required String address,
      required String rating,
      required String deliveryTime,
      required String url,
      context}) {
    return Card(
      shadowColor: Colors.grey,
      child: SizedBox(
        height: 90,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 70,
                width: 70,
                child: Image.network(url),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
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
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    address,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_border_outlined,
                        size: 18,
                      ),
                      Text(
                        rating,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.delivery_dining_outlined,
                        size: 20,
                      ),
                      Text(
                        deliveryTime,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
