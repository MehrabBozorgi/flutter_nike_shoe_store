import 'package:flutter/material.dart';

import '../model/cart_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF5F6FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cart Screen',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        backgroundColor: Color(0xffF5F6FF),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartModel.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: mediaQuery.width,
                  height: 175,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartModel[index].name,
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
                            cartModel[index].price,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Row(
                            spacing: 10,
                            children: [
                              IconButton(
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  elevation: 5,
                                  shadowColor: Colors.blue,
                                ),
                                onPressed: () {},
                                icon: Icon(Icons.remove, color: Colors.white),
                              ),
                              Text(
                                cartModel[index].count.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              IconButton(
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  elevation: 5,
                                  shadowColor: Colors.blue,
                                ),
                                onPressed: () {},
                                icon: Icon(Icons.add, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: mediaQuery.height,
                        decoration: BoxDecoration(
                          color: Color(0xFFE7F4FF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          cartModel[index].image,
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                );
              },
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
                      'Total Price',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      '120',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text(
                    'Buy',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
