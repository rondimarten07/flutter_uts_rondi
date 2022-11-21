import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/models/smarthome_model.dart';
import 'package:flutter_uts_rondi/screens/tranding/components/menu_items/smarthome_menu_item.dart';

class SmarthomeTab extends StatelessWidget {
  const SmarthomeTab({super.key, required this.smarthomeList});

  final List<Smarthome> smarthomeList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: smarthomeList.length,
      itemBuilder: (context, int key) {
        return SmarthomeMenuItem(
          index: key,
          items: smarthomeList[key],
        );
      },
    );
  }
}
