import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:probox/auth/auth_respository.dart';
import 'package:probox/screen/login_screen%201.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController _controller = TextEditingController();
  final AuthRepository _repository = AuthRepository();
  bool _isLoading = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: _controller,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  _isLoading = true;
                });
                try {
                  final String token = await _repository.login(
                      phone: _controller.text, code: '0000');
                  print(token);
                  setState(() {
                    _isLoading = false;
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => Dars(
                            token: token,
                            phoneNumber: '+998',
                          )));
                } on DioException catch (e) {
                  setState(() {
                    _isLoading = false;
                  });
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            content: Text(e.response?.data.toString() ??
                                "Nimadur xato ketdi"),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("ok"),
                              ),
                            ],
                          ));
                }
              },
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : const Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}
