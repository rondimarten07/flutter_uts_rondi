import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/enums.dart';

import '../../components/custom_buttom_nav_bar.dart';
import 'components/body.dart';

class TrandingScreen extends StatelessWidget {
  static String routeName = "/trand";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuPage(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.trand),
    );
  }
}
