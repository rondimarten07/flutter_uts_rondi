import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/size_config.dart';

const kPrimaryColor = Color.fromARGB(255, 66, 194, 255);
const kPrimaryLightColor = Color.fromARGB(255, 144, 210, 240);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromARGB(255, 121, 157, 249),
    Color.fromARGB(255, 41, 80, 253)
  ],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kTextColor2 = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Silahkan Masukan Email Kamu";
const String kInvalidEmailError = "Masukan Email Dengan Benar";
const String kPassNullError = "Silahkan Masukan Password Kamu";
const String kShortPassError = "Password terlalu pendek";
const String kMatchPassError = "Passwords tidak sama";
const String kNamelNullError = "Silahkan masukan nama kamu";
const String kPhoneNumberNullError = "Silahkan masukan nomor telephon kamu";
const String kAddressNullError = "Silahkan masukan alamat kamu";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
