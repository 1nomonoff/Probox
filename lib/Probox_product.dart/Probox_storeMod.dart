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
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(children: [
                SizedBox(
                  height: 138,
                ),
                SizedBox(
                    height: 48,
                    child: Column(children: [
                      Text(
                        'Probox Store.',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(' The best way to buy the products you love.',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold))
                    ])),
                Row(
                  children: [
                    Text(
                        "Probox Store. The best way to buy the products you love.Probox Store. The best way to buy the products you love."),
                  ],
                ),
                Image.asset(
                  'assets/images/Apple-Iphone-15-Pro-PNG 1 (1).png', // Telefon rasmi
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Купить'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('Оставить заявку'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blue,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_left), // Chap strelka
                      onPressed: () {},
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_right), // O'ng strelka
                        onPressed: () {}),
                  ],
                ),
              ]),
            ],
          )),
    );
  }
}
