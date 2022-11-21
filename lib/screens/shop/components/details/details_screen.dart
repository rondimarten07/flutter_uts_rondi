import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_uts_rondi/constants.dart';
import 'package:flutter_uts_rondi/models/electronic_model.dart';
import 'package:flutter_uts_rondi/screens/shop/components/details/component/body.dart';

class DetailsScreen extends StatelessWidget {
  final Electronic electronic;

  const DetailsScreen({Key? key, required this.electronic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: electronic.color,
      appBar: buildAppBar(context),
      body: Body(electronic: electronic),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: electronic.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
