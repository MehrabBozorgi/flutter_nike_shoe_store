import 'package:flutter/material.dart';

import '../model/product_model.dart';

class BeginScreen extends StatelessWidget {
  const BeginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F6FF),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              TopIconSection(),
              SearchBarSection(),
              BrandsSection(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Shoes',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              // for( int i=0 ; i < list.length ; i++ )

              SizedBox(
                height: 275,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return PopularShoesItem(index: index);
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arrivals',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 275,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return NewArrivalItem(index: index);
                  },
                ),
              ),


              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
class NewArrivalItem extends StatelessWidget {
  const NewArrivalItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.5,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.only(bottom: 5, top: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFE7F4FF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                productList[index].image,
                width: MediaQuery.of(context).size.width * 0.475,
                height: 155,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productList[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Review',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                          Icon(Icons.star, color: Colors.orange),
                        ],
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Color(0xFF2D96FF),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    productList[index].price,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class PopularShoesItem extends StatelessWidget {
  const PopularShoesItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFE7F4FF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              productList[index].image,
              width: MediaQuery.of(context).size.width * 0.9,
              height: 155,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text(
                      productList[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text(
                          'Review',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        Icon(Icons.star, color: Colors.orange),
                      ],
                    ),
                    Text(
                      productList[index].price,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xFF2D96FF),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BrandsSection extends StatelessWidget {
  const BrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 15,
        children: [
          Container(
            padding: EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 25),
            decoration: BoxDecoration(
              color: Color(0xFF2D96FF),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              spacing: 10,
              children: [
                LogoImagesWidget(imageName: 'simple-icons_nike'),
                Text(
                  'Nike',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          LogoImagesWidget(imageName: 'simple-icons_puma'),
          LogoImagesWidget(imageName: 'simple-icons_jordan'),
          LogoImagesWidget(imageName: 'gg_adidas'),
        ],
      ),
    );
  }
}

class LogoImagesWidget extends StatelessWidget {
  const LogoImagesWidget({super.key, required this.imageName});

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(
        'assets/images/$imageName.png',
        width: 50,
        height: 50,
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
