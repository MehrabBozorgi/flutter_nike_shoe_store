import 'package:flutter/material.dart';

class BeginScreen extends StatelessWidget {
  const BeginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F6FF),
        body: Column(
          spacing: 15,
          children: [
            TopIconSection(),
            SearchBarSection(),
          ],
        ),
      ),
    );
  }
}

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ///widget1
        Container(
          width: MediaQuery.of(context).size.width * 0.78,
          height: 60,
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            spacing: 15,
            children: [
              Icon(
                Icons.search,
                color: Colors.grey,
                size: 28,
              ),
              Text(
                'Search...',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),

        ///widget2
        Card(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Icon(
              Icons.tune,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class TopIconSection extends StatelessWidget {
  const TopIconSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset('assets/images/hugeicons_menu-circle.png', width: 24),
          ),
        ),
        Card(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.shopping_basket_outlined),
          ),
        ),
      ],
    );
  }
}
