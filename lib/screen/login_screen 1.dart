import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:probox/screen/sms_screen.dart';

class Dars extends StatefulWidget {
  const Dars({super.key, required String token, required String phoneNumber});

  @override
  State<Dars> createState() => _DarsState();
}

class _DarsState extends State<Dars> {
  var maskFormatter = MaskTextInputFormatter(
      mask: '##  ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Войти в личный кабинет",
            style: GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 36,
          ),
          Text(
            "Введите номер телефона",
            style:
                GoogleFonts.inter(fontSize: 14, color: const Color(0xFF6E6E73)),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            width: 396,
            child: TextFormField(
              inputFormatters: [maskFormatter],
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Text(
                    "+998",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(width: 0, color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.white))),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            width: 396,
            height: 56,
            child: MyButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (_) => const SmsScreen(
                            phoneNumber: '',
                          )),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? backColor;
  const MyButton({
    super.key,
    required this.onPressed,
    this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF3D82D0),
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => const SmsScreen(
                    phoneNumber: '',
                  )));
        },
        child: Text(
          "Получить код активации",
          style: GoogleFonts.inter(
            fontSize: 16,
          ),
        ));
  }
}
