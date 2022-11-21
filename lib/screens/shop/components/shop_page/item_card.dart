import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/constants.dart';
import 'package:flutter_uts_rondi/models/electronic_model.dart';

class ItemCard extends StatelessWidget {
  final Electronic electronic;
  final Function()? press;
  const ItemCard({
    super.key,
    required this.electronic,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: electronic.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${electronic.id}",
                child: Image.asset(electronic.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              electronic.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "Rp ${electronic.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
