import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_nike_shoe_store/screen/login_screen.dart';

import '../bottom_navigation_bar.dart';
import 'begin_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffF5F6FF),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in screen',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'welcome nike store',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: inputDecorationFuc('User Name'),
                textInputAction: TextInputAction.next,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: inputDecorationFuc('Email'),
                textInputAction: TextInputAction.next,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly], // فقط عدد مجاز است
                decoration: inputDecorationFuc('Phone Number'), textInputAction: TextInputAction.next,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: inputDecorationFuc('Password'),
                textInputAction: TextInputAction.done,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2D96FF),
                  foregroundColor: Color(0xFFffffff),
                  fixedSize: Size(double.maxFinite, 45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.5)),
                ),
                onPressed: () {

                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => BottomNavigationBarScreen(),
                    ),
                        (route) => false,
                  );

                },
                child: Text('Signup'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('you have account?!'),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xFF2D96FF),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration inputDecorationFuc(String hintText) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      hintStyle: TextStyle(
        color: Color(0xFFB3B3B3),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF2D96FF), width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFD2D2D2)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
