import 'package:flutter/material.dart';

class ProboxStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                'Лучшие устройства в одном магазине PROBOX',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Probox Store. The best way to buy the products you love.',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 125),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                          ),
                          child: Text('Подробнее'),
                        ),
                        Image.asset(
                          'Assents/Images/2a29a1c92e0926b100f4a0509fb5a8b7.png',
                          width: 672.26,
                          height: 400,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 36),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Probox Store. The best way to buy the products you love.',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 115),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                          ),
                          child: Text('Подробнее'),
                        ),
                        Image.asset(
                          'Assents/Images/724ac4cddaf4bd4645f442c2d383955b.png',
                          width: 672.26,
                          height: 400,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
