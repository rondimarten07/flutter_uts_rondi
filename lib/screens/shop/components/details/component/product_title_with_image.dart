import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/constants.dart';
import 'package:flutter_uts_rondi/models/electronic_model.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.electronic,
  });

  final Electronic electronic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Aristocratic Hand Bag",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              electronic.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Harga\n"),
                      TextSpan(
                        text: "\Rp.${electronic.price}",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: Hero(
                    tag: "${electronic.id}",
                    child: Image.asset(
                      electronic.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
