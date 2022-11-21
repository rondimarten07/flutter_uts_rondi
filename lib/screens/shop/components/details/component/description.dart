import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/constants.dart';
import 'package:flutter_uts_rondi/models/electronic_model.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.electronic,
  });

  final Electronic electronic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        electronic.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
