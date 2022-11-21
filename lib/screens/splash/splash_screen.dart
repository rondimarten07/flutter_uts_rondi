import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/screens/splash/components/body.dart';
import 'package:flutter_uts_rondi/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // You have to call it on your starting screen

    return Scaffold(
      body: Body(),
    );
  }
}
