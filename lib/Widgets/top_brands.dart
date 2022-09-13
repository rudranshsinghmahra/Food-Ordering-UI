import 'package:flutter/material.dart';
import 'package:food_ordering_ui_flutter/Screens/product_details_screen.dart';

class TopBrandNearYou extends StatelessWidget {
  const TopBrandNearYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Top Brands Near You",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ProductDetailsScreen()));
                  },
                  child: brands("Domino's",
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Dominos_pizza_logo.svg/1200px-Dominos_pizza_logo.svg.png"),
                ),
                GestureDetector(
                  onTap: () {},
                  child: brands("Starbucks",
                      "https://www.selecta.com/.imaging/mte/selecta/original/dam/website/brands/starbucks/WeProudlyServeStarbucks-1.png/jcr:content/WeProudlyServeStarbucks%201.png"),
                ),
                brands("Nirulas",
                    "https://play-lh.googleusercontent.com/dWcc5QBZx_vi8nyXpuzR2O14PnYUoAXaQFb2OMuBhtpoRURRBIYZfAxXYRavdxiPqg"),
                brands("Haldiram",
                    "https://seeklogo.com/images/H/haldirams-logo-2A7BA0AD2C-seeklogo.com.png"),
                brands("Gopal's 56",
                    "https://static.wixstatic.com/media/fe6f47_b8420b8cc0ea422fa3dd09e5b9975599~mv2.png/v1/crop/x_0,y_163,w_1920,h_710/fill/w_260,h_96,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/g56-footer-logo.png"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget brands(String name, String url) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Image.network(url),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
