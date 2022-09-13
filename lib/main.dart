import 'package:flutter/material.dart';
import 'package:food_ordering_ui_flutter/Screens/home_page.dart';
import 'package:food_ordering_ui_flutter/Screens/on_boarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool("showHome") ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.showHome}) : super(key: key);
  final bool showHome;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showHome ? const HomePage() : const OnBoardingScreen(),
    );
  }
}
