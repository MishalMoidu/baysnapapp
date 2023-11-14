import 'package:chatapp_project/utilities/app_main_color.dart';
import 'package:chatapp_project/view/authentication/log_in/chatapp_login_page.dart';
import 'package:chatapp_project/view/homepage/homepage_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utilities/responsive.dart';

class SplashScreenUi extends ConsumerStatefulWidget {
  const SplashScreenUi({super.key});

  @override
  ConsumerState<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends ConsumerState<SplashScreenUi> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LogInPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/chatapp.gif"),
            const Spacer(),
            Text(
              "BaySnap",
              style: TextStyle(
                fontFamily: "Mont",
                color: AppColors.primaryTheme,
                fontWeight: FontWeight.w600,
                fontSize: Responsive.w(30, context),
              ),
            ),
            SizedBox(
              height: Responsive.h(20, context),
            ),
            RichText(
              selectionColor: AppColors.primaryTheme,
              text: TextSpan(children: [
                TextSpan(
                  text: "From  ",
                  style: TextStyle(
                    fontFamily: "Mont",
                    color: AppColors.primaryTheme,
                    fontWeight: FontWeight.w300,
                    fontSize: Responsive.w(16, context),
                  ),
                ),
                TextSpan(
                  text: "Mishaaal",
                  style: TextStyle(
                    fontFamily: "Mont",
                    color: const Color.fromARGB(255, 7, 86, 255),
                    fontWeight: FontWeight.w600,
                    fontSize: Responsive.w(16, context),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
