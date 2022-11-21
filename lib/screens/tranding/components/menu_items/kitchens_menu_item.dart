import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/models/kitchens_model.dart';
import 'package:flutter_uts_rondi/screens/tranding/components/detaill_page/kitchens_detail_page.dart';

class KitchensMenuItem extends StatelessWidget {
  final int index;
  final Kitchens itemd;
  const KitchensMenuItem({super.key, required this.index, required this.itemd});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 40),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KitchensDetailPage(
                              index: index,
                            )));
              },
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 1 / 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        itemd.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemd.nama,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      itemd.shortdesc,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Rp ${itemd.price}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle,
                color: Color.fromARGB(255, 66, 194, 255),
                size: 36,
              ),
            )
          ],
        ),
      ),
    );
  }
}
