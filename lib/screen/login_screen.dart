import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_nike_shoe_store/screen/signup_screen.dart';

import '../bottom_navigation_bar.dart';
import 'begin_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool textStatus = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F6FF),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login screen',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'welcome back nike store',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number, // کیبورد عددی
                inputFormatters: [FilteringTextInputFormatter.digitsOnly], // فقط عدد مجاز است
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  // hintText: 'phone number',
                  hintText: 'phone number',
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
                ),
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: textStatus,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.visibility),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (textStatus) {
                          textStatus = false;
                        } else {
                          textStatus = true;
                        }
                      });
                    },

                    ///if true = visible , else = invisible
                    icon: textStatus ? Icon(Icons.visibility_outlined) : Icon(Icons.visibility_off_outlined),
                  ),

                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'password',
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
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xFF2D96FF),
                ),
                onPressed: () {},
                child: Text('Forget password?'),
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
                child: Text('Login'),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have account?!'),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xFF2D96FF),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupScreen(),
                        ),
                      );
                    },
                    child: Text('Create account'),
                  ),
                ],
              ),

//               ElevatedButton(
//                 onPressed: () {
//                   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ),);
//
//
//                   // Navigator.of(context).push(
//                   //   MaterialPageRoute(
//                   //     builder: (context) => LoginScreen(),
//                   //   ),
//                   // );
//
// // Navigator.of(context).pop();
//
//
//                 },
//                 child: Text('Navigator'),
//               ),
            ],
          ),
        ),
      ),
    );
  }
}
