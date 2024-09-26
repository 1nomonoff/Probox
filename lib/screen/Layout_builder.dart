import 'package:flutter/material.dart';
import 'package:probox/widjets/Responsive_widjet.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: Container(
        color: Colors.green,
      )),
      body: ResponsiveWidjet(
        webChild: Text("Bu Web app"),
        phone: Text("Bu telefon"),
        planshetChild: Text("Bu Web app"),
      ),
    );
  }
}
