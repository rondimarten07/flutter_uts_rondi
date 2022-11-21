import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/screens/splash/splash_screen.dart';
import 'package:flutter_uts_rondi/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_uts_rondi/size_config.dart';

class SplashScreenPertama extends StatefulWidget {
  const SplashScreenPertama({Key? key}) : super(key: key);
  static String routeName = "/splashscreen_pertama";

  @override
  State<SplashScreenPertama> createState() => _SplashScreenPertamaState();
}

class _SplashScreenPertamaState extends State<SplashScreenPertama> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, SplashScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/Logo_RonEshop.png",
                  height: 200.0,
                  width: 200.0,
                ),
              ],
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
