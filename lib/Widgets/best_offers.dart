import 'package:flutter/material.dart';

class BestOfferForYou extends StatelessWidget {
  const BestOfferForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Best Offers For You",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                banner(
                    "https://www.dominos.co.in/blog/wp-content/uploads/2018/12/Dominos-Blog-banner.jpg",
                    context),
                banner("https://i.ytimg.com/vi/pGj4yFaeJpw/maxresdefault.jpg",
                    context),
                banner(
                    "https://www.haldirams.com/media/wysiwyg/images/RTE_Banner_1_.jpg",
                    context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget banner(String url, context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
            url,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
