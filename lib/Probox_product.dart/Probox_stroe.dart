import 'package:flutter/material.dart';
import 'package:probox/widjets/appex_bottom.dart';

class ProboxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/images/logo-01.png'),
          SizedBox(
            width: 10,
          ),
          AppTextButton(
            onPressed: () {},
            title: "Каталог",
          ),
          AppTextButton(
            onPressed: () {},
            title: "Телефоны",
          ),
          AppTextButton(
            onPressed: () {},
            title: "Планшеты",
          ),
          AppTextButton(
            onPressed: () {},
            title: "Ноутбуки",
          ),
          AppTextButton(
            onPressed: () {},
            title: "Умные часы",
          ),
          AppTextButton(
            onPressed: () {},
            title: "Наушники",
          ),
          AppTextButton(
            onPressed: () {},
            title: "Аксессуары",
          ),
          IconButton(
            icon: Icon(Icons.apps_outlined),
            onPressed: () {},
          ),
          AppTextButton(
            onPressed: () {},
            title: "Сервисы",
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
            icon: Icon(Icons.search), // lupa SVG
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border_outlined), // Yurak SVG
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined), // Savat SVG
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_outline_rounded), // Odam SVG
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.language), // Globus SVG
            onPressed: () {},
          ),
          Text("Py"),
        ]),
      )),
    ));
  }
}
