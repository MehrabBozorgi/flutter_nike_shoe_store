import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_nike_shoe_store/screen/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();


    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff6DADFC), Color(0xff0188E9)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Image.asset('assets/images/blue2.png'
                  // width: 300,
                  ),
            ),
            Text(
              'Nike Store',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'www.nike.com',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ),);
            //
            //
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) => LoginScreen(),
            //       ),
            //     );
            //
            //
            //
            //
            //   },
            //   child: Text('Navigator'),
            // ),
          ],
        ),
      ),
    );
  }
}
