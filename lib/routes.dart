import 'package:flutter/widgets.dart';
import 'package:flutter_uts_rondi/screens/about/about_screen.dart';
import 'package:flutter_uts_rondi/screens/cart/cart_screen.dart';
import 'package:flutter_uts_rondi/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_uts_rondi/screens/details/details_screen.dart';
import 'package:flutter_uts_rondi/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_uts_rondi/screens/home/home_screen.dart';
import 'package:flutter_uts_rondi/screens/login_success/login_success_screen.dart';
import 'package:flutter_uts_rondi/screens/otp/otp_screen.dart';
import 'package:flutter_uts_rondi/screens/profile/profile_screen.dart';
import 'package:flutter_uts_rondi/screens/shop/shop_screen.dart';
import 'package:flutter_uts_rondi/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_uts_rondi/screens/splash/splash_screen.dart';
import 'package:flutter_uts_rondi/screens/tranding/tranding_screen.dart';
import 'package:flutter_uts_rondi/splashscreen_pertama.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreenPertama.routeName: (context) => SplashScreenPertama(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ShopScreen.routeName: (context) => ShopScreen(),
  TrandingScreen.routeName: (context) => TrandingScreen(),
  AboutScreen.routeName: ((context) => AboutScreen()),
};
