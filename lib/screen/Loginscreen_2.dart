import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:probox/Model/LoginModel.dart';
import 'package:probox/auth/Login_repository.dart';
import 'package:probox/screen/Confirmation_screen.dart';

class LogiinScreen extends StatefulWidget {
  const LogiinScreen({super.key});

  @override
  State<LogiinScreen> createState() => _LogiinScreenState();
}

var maskFormatter = MaskTextInputFormatter(
    mask: '## ### ## ##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

class _LogiinScreenState extends State<LogiinScreen> {
  final TextEditingController _controller = TextEditingController();
  bool _isLoading = false;
  final LoginRepository _Loginrepository = LoginRepository();
  final LoginRepository _loginRepository = LoginRepository();

  final TextEditingController _controlleru = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Login',
            style: TextStyle(fontFamily: "Updock"),
          ),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _controller,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(9)
                    ],
                    decoration: InputDecoration(
                      labelText: 'Введите номер',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          style: GoogleFonts.inter(fontSize: 14),
                          '+998',
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                SizedBox(
                    width: 396,
                    height: 56,
                    child: Text(
                      'Получить код активации',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )),
                ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      _isLoading = true;
                    });
                    try {
                      final Loginmodel token = await _Loginrepository.login21(
                          phone: 998.toString() + _controller.text, code: "");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ConfirmationScreen(
                                token: token.data.token,
                              )));
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
                  child: Text('Войти'),
                )
              ]),
        ));
  }
}
