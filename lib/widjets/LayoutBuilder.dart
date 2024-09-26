import 'package:flutter/material.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: Container(
            color: Colors.green,
          ),
        ),
        body: LayoutBuilder(builder: (context, boxConstrains) {
          final double maxWidth = boxConstrains.maxWidth;
          if (maxWidth > 1100) {
            return Row(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            "assets/photo_2024-09-05_14.18.54__1_-removebg-preview.png"),
                        Container(
                          color: Colors.yellow,
                          width: size.width * 0.5,
                          height: size.height * 0.3,
                        ),
                      ],
                    )
                  ],
                )
              ],
            );
          } else if (maxWidth >= 650) {
            return Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                        "assets/photo_2024-09-05_14.18.54__1_-removebg-preview.png"),
                    Container(
                      color: Colors.yellow,
                      width: size.width * 0.5,
                      height: size.height * 0.3,
                    ),
                  ],
                )
              ],
            );
          } else {
            return Center(
              child: Text("Telefon uchun"),
            );
          }
        }));
  }
}
