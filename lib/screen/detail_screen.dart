import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_nike_shoe_store/model/cart_model.dart';
import 'package:flutter_nike_shoe_store/model/product_model.dart';
import 'package:flutter_nike_shoe_store/screen/cart_screen.dart';

class DetailScreen extends StatefulWidget {
  // const DetailScreen({super.key, required this.image, required this.title, required this.price});
  const DetailScreen({
    super.key,
    required this.product,
  });

  // final String image;
  // final String title;
  // final String price;

  final Product product;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String value = '1';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    const String desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque';
    return Scaffold(
      backgroundColor: Color(0xffF5F6FF),
      appBar: AppBar(
        title: Text(
          'Detail Screen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffF5F6FF),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // گوشه‌های گرد
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
            icon: Icon(Icons.shopping_basket_outlined),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // گوشه‌های گرد
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.red,
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // گوشه‌های گرد
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //
            //     IconButton(
            //       onPressed: () {},
            //       icon: Icon(Icons.arrow_back),
            //       style: IconButton.styleFrom(
            //         backgroundColor: Colors.white,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10), // گوشه‌های گرد
            //         ),
            //       ),
            //     ),
            //     Text(
            //       'Detail Screen',
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            //     ),
            //     IconButton(
            //       onPressed: () {},
            //       icon: Icon(Icons.favorite_outline,color: Colors.red,),
            //       style: IconButton.styleFrom(
            //         backgroundColor: Colors.white,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10), // گوشه‌های گرد
            //         ),
            //       ),
            //     ),
            //
            //   ],
            // ),
            SizedBox(height: 30),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    'JORDAN',
                    style: TextStyle(
                      fontSize: 78,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade100,
                      letterSpacing: 8,
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / -6,
                    child: Image.asset(
                      widget.product.image,
                      width: mediaQuery.width * 0.9,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    'Size',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  SizeSection(value: value),
                  Text(
                    'Gallery',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.product.gallery.length,
                      itemBuilder: (context, index) => Image.asset(
                        errorBuilder: (context, error, stackTrace) => Image.asset(
                          'assets/images/noimage.png',
                          height: 65,
                          width: 65,
                        ),
                        widget.product.gallery[index],
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: mediaQuery.width,
              height: 75,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        widget.product.price,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    onPressed: () {



                      cartModel.add(
                        CartModel(
                          name: widget.product.name,
                          price: widget.product.price,
                          image: widget.product.image,
                          count: 1,
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Your order submitted",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.green,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          duration: Duration(seconds: 10),
                        ),
                      );


                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartScreen()),
                      );
                    },
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            )

            // Text(product.price),
          ],
        ),
      ),
    );
  }
}

class SizeSection extends StatefulWidget {
  SizeSection({super.key, required this.value});

  String value;

  @override
  State<SizeSection> createState() => _SizeSectionState();
}

class _SizeSectionState extends State<SizeSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '1';
              });
            },
            child: SizeItem(sizeNumber: '1', value: widget.value),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '2';
              });
            },
            child: SizeItem(sizeNumber: '2', value: widget.value),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '3';
              });
            },
            child: SizeItem(sizeNumber: '3', value: widget.value),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '4';
              });
            },
            child: SizeItem(sizeNumber: '4', value: widget.value),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '5';
              });
            },
            child: SizeItem(sizeNumber: '5', value: widget.value),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '6';
              });
            },
            child: SizeItem(sizeNumber: '6', value: widget.value),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '7';
              });
            },
            child: SizeItem(sizeNumber: '7', value: widget.value),
          ),
        ],
      ),
    );
  }
}

class SizeItem extends StatelessWidget {
  const SizeItem({super.key, required this.sizeNumber, required this.value});

  final String sizeNumber;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: value == sizeNumber ? Colors.blue : Colors.blue.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        sizeNumber,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: value == sizeNumber ? Colors.white : Colors.blue,
        ),
      ),
    );
  }
}
