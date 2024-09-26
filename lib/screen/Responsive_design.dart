import 'package:flutter/material.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  const ResponsiveLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Layout'),
        ),
        body: const ResponsiveLayout(),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Ekran kengligiga qarab column va rowlarni moslashtirish
        if (constraints.maxWidth > 600) {
          // Katta ekran uchun grid layout
          return GridView.count(
            crossAxisCount: 3,
            children: [
              buildContainer('Box 1', Colors.lightBlue),
              buildContainer('Box 2', Colors.orange),
              buildContainer('Box 3', Colors.pink),
              buildContainer('Box 4', Colors.green),
              buildContainer('Box 5', Colors.red),
              buildContainer('Box 6', Colors.purple),
            ],
          );
        } else {
          // 600 dan kichik ekran uchun 2 qatorli grid layout
          return GridView.count(
            crossAxisCount: 2,
            children: [
              buildContainer('Box 1', Colors.lightBlue),
              buildContainer('Box 2', Colors.orange),
              buildContainer('Box 3', Colors.pink),
              buildContainer('Box 4', Colors.green),
              buildContainer('Box 5', Colors.red),
              buildContainer('Box 6', Colors.purple),
            ],
          );
        }
      },
    );
  }

  // containerni yaratish kodi
  Widget buildContainer(String text, Color color) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
