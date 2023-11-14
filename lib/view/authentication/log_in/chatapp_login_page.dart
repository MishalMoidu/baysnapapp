import 'package:chatapp_project/utilities/responsive.dart';
import 'package:chatapp_project/view/homepage/homepage_ui.dart';
import 'package:chatapp_project/view/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00426d),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.w(20, context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/chatapploginicon.gif"),
            SizedBox(
              height: Responsive.h(70, context),
            ),
            const CustomTextField(
              icontype: Icon(Icons.email),
              hint: "Enter Your Email ID",
            ),
            const CustomTextField(
              hint: "Enter Your Password",
              icontype: Icon(Icons.lock),
            ),
            SizedBox(
              height: Responsive.h(50, context),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageUi(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LogIn",
                      style: TextStyle(
                          fontFamily: "Mont",
                          fontWeight: FontWeight.w600,
                          fontSize: Responsive.w(20, context),
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Responsive.h(10, context),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 167, 253, 170)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageUi(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Image.asset(
                        "assets/images/googleicon.png",
                        scale: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: Responsive.w(10, context),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontFamily: "Mont",
                            fontSize: Responsive.w(20, context),
                            color: Colors.black),
                        children: const [
                          TextSpan(
                              text: "SignIn ",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: "Google",
                              style: TextStyle(fontWeight: FontWeight.w600))
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
