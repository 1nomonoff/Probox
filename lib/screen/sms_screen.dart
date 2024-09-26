import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmsScreen extends StatefulWidget {
  final String phoneNumber;
  const SmsScreen({
    super.key,
    required this.phoneNumber,
  });

  @override
  State<SmsScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<SmsScreen> {
  int seconds = 60;

  final TextEditingController _controller = TextEditingController();
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
                widget.phoneNumber,
                semanticsLabel: "Код отравлен на номер",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(height: 40),
              Text("Введите код из SMS",
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.black)),
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3D82D0)),
                  child: Text(
                    "Войти",
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white),
                  ),
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
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: constraints.maxWidth * 0.04,
                              ),
                            ),
                            TextSpan(
                              text: " : ${seconds.toString().padLeft(2, '0')} ",
                              style: TextStyle(
                                color: Colors.black,
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
