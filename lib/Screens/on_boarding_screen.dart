import 'package:flutter/material.dart';
import 'package:food_ordering_ui_flutter/Screens/home_page.dart';
import 'package:food_ordering_ui_flutter/Widgets/build_on_boarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            isLastPage = index == 2;
          });
        },
        children: [
          buildOnBoardingPages(
              urlImage:
                  "https://www.softgridcomputers.com/img/online-order-food.png",
              title: "Best Food &\nExtreme Delivery",
              subTitle: "Drink, Food & Enjoy with your Family"),
          buildOnBoardingPages(
              urlImage:
                  "https://cdni.iconscout.com/illustration/premium/thumb/express-delivery-2527789-2117414.png",
              title: "Best Delivery",
              subTitle:
                  "We can send Everywhere!Time or\nDistance can't stop us"),
          buildOnBoardingPages(
              urlImage:
                  "https://www.sinch.com/sites/default/files/styles/small_hq/public/image/2021-07/multichannel_conversation.png?itok=l-SPaHmu",
              title: "Arrange Now",
              subTitle: "You can still collect your\nparcel today")
        ],
      ),
      bottomSheet: isLastPage
          ? Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.redAccent),
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool("showHome", true).then((value) =>
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage())));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          : SizedBox(
              height: 80,
              child: Center(
                  child:
                      SmoothPageIndicator(controller: controller, count: 3))),
    );
  }
}
