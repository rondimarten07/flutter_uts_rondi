import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/models/trandings_model.dart';
import 'package:flutter_uts_rondi/screens/tranding/components/menu_items/trandings_menu_item.dart';

class TrandingsTab extends StatelessWidget {
  const TrandingsTab({super.key, required this.trandingsList});

  final List<Trandings> trandingsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: trandingsList.length,
      itemBuilder: (context, int key) {
        return TrandingsMenuItem(
          index: key,
          itemt: trandingsList[key],
        );
      },
    );
  }
}
