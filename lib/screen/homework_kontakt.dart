import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Davlatlar extends StatefulWidget {
  const Davlatlar({super.key});

  @override
  State<Davlatlar> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<Davlatlar> {
  List users = [
    {
      "name": "Fransiya",
      "surname": "Parij",
      "imageUrl": "assets/images/photo_2024-07-19_14-31-49.jpg",
      "int": "aholisi 11mln"
    }, //1
    {
      "name": "Sausiya Arabiston",
      "surname": "Makka",
      "imageUrl": "assets/images/photo_2024-07-19_14-31-58.jpg",
      "int": "aholisi 11mln"
    }, // 2
    {
      "name": "Qatar",
      "surname": "Doxa",
      "imageUrl": "assets/images/photo_2024-07-19_14-32-03.jpg",
      "int": "aholisi 11mln"
    }, //3
    {
      "name": "Dubai",
      "surname": "Abu Dhabi",
      "imageUrl": "assets/images/photo_2024-07-19_14-32-07.jpg",
      "int": "aholisi 11mln"
    }, //4
    {
      "name": "Ispaniya",
      "surname": "Madrid",
      "imageUrl": "assets/images/photo_2024-07-19_14-32-11.jpg",
      "int": "aholisi 11mln"
    }, //5
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cites around world"),
        titleTextStyle: const TextStyle(fontSize: 50, color: Colors.black),
        backgroundColor: Colors.yellow,
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 600,
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    leading: Container(
                      child: ClipRRect(
                        child: Image.asset(
                          users[index]['imageUrl'],
                          fit: BoxFit.fill,
                          width: 100,
                        ),
                      ),
                    ),
                    title: Text(users[index]['name']),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(users[index]['surname']),
                          Text(users[index]['int']),
                        ])),
              );
            },
          ),
        ),
      ),
    );
  }
}
