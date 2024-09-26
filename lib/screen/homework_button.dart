import 'package:flutter/material.dart';

class Iconchalar extends StatefulWidget {
  const Iconchalar({super.key});

  @override
  State<Iconchalar> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<Iconchalar> {
  int number = 0;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  List users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              width: 300,
              child: Card(
                  color: Colors.green,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Ismi:"),
                          Text(users[index]['name'])
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text("Familiyasi:"),
                          Text(users[index]['surname'])
                        ],
                      )
                    ],
                  )),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Foydalanuvchini ma'lumotlarini kiriting"),
                  content: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Ism',
                        ),
                        controller: _nameController,
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Familya',
                        ),
                        controller: _surnameController,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            users.add({
                              "name": _nameController.text,
                              "surname": _surnameController.text
                            });
                            _nameController.clear();
                            _surnameController.clear();
                            Navigator.of(context).pop();
                            setState(() {});
                          },
                          child: const Text("Create user"))
                    ],
                  ),
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
