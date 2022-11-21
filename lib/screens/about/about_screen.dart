import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/screens/about/components/body.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = "/about";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
