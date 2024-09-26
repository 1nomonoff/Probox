import 'package:flutter/material.dart';

class ResponsiveScreeen extends StatefulWidget {
  const ResponsiveScreeen({super.key});

  @override
  State<ResponsiveScreeen> createState() => _ResponsiveScreeenState();
}

class _ResponsiveScreeenState extends State<ResponsiveScreeen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Container(
          color: Colors.teal,
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            width: size.width / 2,
            height: size.height * 0.3,
          )
        ],
      ),
    );
  }
}
