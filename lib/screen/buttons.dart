import 'package:flutter/material.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({super.key});

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  int number = 0;
  bool _swich = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 170,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 0,
                    side: const BorderSide(
                      width: 2,
                      color: Color(0xFF3D82D0),
                    )),
                onPressed: () {
                  print("Tugma bosildi");
                },
                child: const Text(
                  "My Button",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              child: Text(
                "la la la",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/photo_2024-07-23_19-34-23.jpg',
                width: 100,
              ),
            ),
            Radio(
                value: 0,
                groupValue: number,
                onChanged: (value) {
                  setState(() {
                    number = value!;
                  });
                }),
            Radio(
                value: 1,
                groupValue: number,
                onChanged: (value) {
                  setState(() {
                    number = value!;
                  });
                }),
            Radio(
                value: 2,
                groupValue: number,
                onChanged: (value) {
                  setState(() {
                    number = value!;
                  });
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Dart mode"),
                const SizedBox(
                  width: 40,
                ),
                Switch(
                    value: _swich,
                    onChanged: (vale) {
                      _swich = !_swich;
                      setState(() {});
                    }),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
