import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/screens/about/about_screen.dart';
import 'package:flutter_uts_rondi/screens/sign_in/components/sign_form.dart';
import 'package:flutter_uts_rondi/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_uts_rondi/screens/splash/splash_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    void showToast_notification() {
      setState(() {
        Fluttertoast.showToast(
            msg: 'Ini adalah halaman notifikasi',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.green);
      });
    }

    void showToast_setting() {
      setState(() {
        Fluttertoast.showToast(
            msg: 'Ini adalah halaman setting',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.green);
      });
    }

    void showToast_help_center() {
      setState(() {
        Fluttertoast.showToast(
            msg: 'Ini adalah halaman Help Center',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.green);
      });
    }

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "About Me",
            icon: "assets/icons/User Icon.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutScreen()));
            },
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () => showToast_notification(),
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () => showToast_setting(),
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () => showToast_help_center(),
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () => Navigator.pushNamed(context, SplashScreen.routeName),
          ),
        ],
      ),
    );
  }
}
