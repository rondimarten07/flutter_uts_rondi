import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/models/kitchens_model.dart';
import 'package:flutter_uts_rondi/screens/tranding/components/menu_items/kitchens_menu_item.dart';

class KitchensTab extends StatelessWidget {
  const KitchensTab({super.key, required this.kitchensList});

  final List<Kitchens> kitchensList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kitchensList.length,
      itemBuilder: (context, int key) {
        return KitchensMenuItem(
          index: key,
          itemd: kitchensList[key],
        );
      },
    );
  }
}
