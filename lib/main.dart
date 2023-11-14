import 'package:chatapp_project/utilities/app_main_color.dart';
import 'package:chatapp_project/utilities/responsive.dart';
import 'package:chatapp_project/view/splash_screen/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BaySnap",
      theme: ThemeData(
          useMaterial3: true,
          drawerTheme: const DrawerThemeData(
            backgroundColor: AppColors.appBarBackGroundColor,
            shadowColor: AppColors.primaryTheme,
            elevation: 1,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.appBarBackGroundColor,
            elevation: 1,
            toolbarHeight: Responsive.h(84, context),
            titleTextStyle: TextStyle(
              fontFamily: "Mont",
              color: AppColors.primaryTheme,
              fontWeight: FontWeight.w600,
              fontSize: Responsive.w(24, context),
            ),
          ),
          tabBarTheme: const TabBarTheme(
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    style: BorderStyle.solid,
                    width: 2,
                    color: AppColors.primaryTheme),
              ),
            ),
            unselectedLabelColor: Color.fromARGB(255, 255, 255, 255),
            unselectedLabelStyle: TextStyle(fontFamily: "Mont"),
            dividerColor: Color.fromARGB(255, 255, 255, 255),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: AppColors.primaryTheme,
            labelStyle: TextStyle(
                fontFamily: "Mont", fontSize: 18, fontWeight: FontWeight.w600),
            overlayColor: MaterialStatePropertyAll(
              Color.fromARGB(255, 201, 218, 255),
            ),
          )),
      home: const SplashScreenUi(),
    );
  }
}
