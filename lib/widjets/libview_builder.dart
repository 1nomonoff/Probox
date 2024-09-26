import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  List users = [
    {
      "name": "Akmal",
      "surname": "Olimov",
      "imageUrl": "assets/images/image 12.png",
    }, //1
    {
      "name": "Javlon",
      "surname": "Muminov",
      "imageUrl": "assets/images/image 12.png",
    }, // 2
    {
      "name": "Abror",
      "surname": "Qosimov",
      "imageUrl": "assets/images/image 12.png",
    }, //3
    {
      "name": "Jamol",
      "surname": "Abrorov",
      "imageUrl": "assets/images/image 12.png",
    }, //4
    {
      "name": "Asil",
      "surname": "Olimov",
      "imageUrl": "assets/images/image 12.png",
    }, //5
    {
      "name": "Axmad",
      "surname": "Numonov",
      "imageUrl": "assets/images/image 12.png",
    }, //6
    {
      "name": "Akmal",
      "surname": "Abrorov",
      "imageUrl": "assets/images/image 12.png",
    }, //7
    {
      "name": "Akbar",
      "surname": "alisherov",
      "imageUrl": "assets/images/image 12.png",
    }, //8
    {
      "name": "Akmal",
      "surname": "Olimov",
      "imageUrl": "assets/images/image 12.png",
    }, //9
    {
      "name": "Asror",
      "surname": "Baxodirov",
      "imageUrl": "assets/images/image 12.png",
    }, //10
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My list view builder"),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Image.asset(users[index]['imageUrl']),
                  ),
                  title: Text(users[index]['name']),
                  subtitle: Text(users[index]['surname']),
                  trailing: const Icon(Icons.camera_alt),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
