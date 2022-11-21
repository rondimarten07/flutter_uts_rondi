import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/routes.dart';
import 'package:flutter_uts_rondi/screens/profile/profile_screen.dart';
import 'package:flutter_uts_rondi/screens/splash/splash_screen.dart';
import 'package:flutter_uts_rondi/splashscreen_pertama.dart';
import 'package:flutter_uts_rondi/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),

      // home: SplashScreenPertama(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreenPertama.routeName,
      routes: routes,
    );
  }
}
