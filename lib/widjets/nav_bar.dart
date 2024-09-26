import 'package:flutter/material.dart';
import 'package:probox/constants/colors.dart';
import 'package:probox/widjets/appex_bottom.dart';

class NavBar extends StatelessWidget {
  final ScrollController controller;
  const NavBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            const SizedBox(
              width: 116.5,
            ),
            AppTextButton(
              onPressed: () {
                controller.jumpTo(200);
              },
              title: "Become a renter",
            ),
            const SizedBox(
              width: 40,
            ),
            AppTextButton(
              onPressed: () {},
              title: "Rental deals",
            ),
            const SizedBox(
              width: 40,
            ),
            AppTextButton(
              onPressed: () {},
              title: "How it work",
            ),
            const SizedBox(
              width: 40,
            ),
            AppTextButton(
              onPressed: () {},
              title: "Why choose us",
            ),
            const SizedBox(
              width: 80,
            ),
            AppTextButton(
              onPressed: () {},
              title: "Sign in ",
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 43,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.main,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
