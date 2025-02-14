import 'package:flutter/material.dart';
import 'package:flutter_nike_shoe_store/screen/splash_screen.dart';

import 'bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarScreen(),
    );
  }
}
