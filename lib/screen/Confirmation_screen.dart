import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probox/Probox_product.dart/Probox_category.dart';
import 'package:probox/auth/Login_repository.dart';

class ConfirmationScreen extends StatefulWidget {
  final String token;
  const ConfirmationScreen({
    super.key,
    required String this.token,
  });

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

Dio dio = Dio();

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  int seconds = 60;

  TextEditingController _controller = TextEditingController();
  final LoginRepository _Loginrepository = LoginRepository();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Подвердите SMS кода",
                style: GoogleFonts.inter(
                    fontSize: 28, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text("SMS с кодом отправлены на номер"),
              const SizedBox(
                height: 3,
              ),
              Text(
                "Код отравлен на номер 998874484",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(height: 40),
              Text("Введите код SMS",
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey)),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: 396,
                child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Text(
                        "",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
                width: 30,
              ),
              SizedBox(
                width: 396,
                height: 56,
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      _isLoading = true;
                    });
                    try {
                      await _Loginrepository.login2(
                          code: _controller.text, token: widget.token);

                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => Homeproducts()));
                      setState(() {
                        _isLoading = false;
                      });
                    } on DioException catch (e) {
                      setState(() {
                        _isLoading = false;
                      });
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          content: Text(e.response?.data.toString() ??
                              "Ошибка подключения"),
                        ),
                      );
                    } finally {
                      setState(() {
                        _isLoading = false;
                      });
                    }
                  },
                  child: Text(
                    "Войти",
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3D82D0)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TweenAnimationBuilder<Duration>(
                  key: UniqueKey(),
                  duration: Duration(seconds: seconds),
                  tween: Tween(
                      begin: Duration(seconds: seconds), end: Duration.zero),
                  onEnd: () {
                    setState(() {
                      seconds = 60;
                    });
                  },
                  builder:
                      (BuildContext context, Duration value, Widget? child) {
                    final hours = value.inHours;
                    final minutes = value.inMinutes % 60;
                    final seconds = value.inSeconds % 60;
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: hours == 0
                                  ? ''
                                  : '${hours.toString().padLeft(2, '0')} : ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: constraints.maxWidth * 0.04,
                              ),
                            ),
                            TextSpan(
                              text: minutes.toString().padLeft(2, '0'),
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: constraints.maxWidth * 0.04,
                              ),
                            ),
                            TextSpan(
                              text: " : ${seconds.toString().padLeft(2, '0')} ",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: constraints.maxWidth * 0.04,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      );
    });
  }
}
