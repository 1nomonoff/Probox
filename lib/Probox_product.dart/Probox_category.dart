import 'package:flutter/material.dart';
import 'package:probox/screen/ProductCard.dart';

class Homeproducts extends StatefulWidget {
  const Homeproducts({super.key});

  @override
  State<Homeproducts> createState() => _HomeproductsState();
}

class _HomeproductsState extends State<Homeproducts> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Products",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 56,
          ),
          Row(children: [
            Productcard(
              imageUrl: 'assets/images/Laptops.png',
              name: 'Ноутбуки',
            ),
            SizedBox(
              width: 15,
            ),
            Productcard(
              imageUrl: 'assets/images/Iphones.png',
              name: 'Телефоны',
            ),
            SizedBox(
              width: 15,
            ),
            Productcard(
              imageUrl: 'assets/images/Ipad.png',
              name: 'Планшеты',
            ),
            SizedBox(
              width: 15,
            ),
            Productcard(
              imageUrl: 'assets/images/smatr watchs.png',
              name: 'Умные часы',
            ),
            SizedBox(
              width: 15,
            ),
            Productcard(
              imageUrl: 'assets/images/blooth.png',
              name: 'Наушники ',
            ),
            SizedBox(
              width: 15,
            ),
            Productcard(
              imageUrl: 'assets/images/acsesurices.png',
              name: 'Accessories ',
            ),
          ]),
        ],
      ),
    );
  }
}
