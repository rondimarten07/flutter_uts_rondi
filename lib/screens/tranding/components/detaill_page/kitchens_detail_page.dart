import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/models/kitchens_model.dart';

class KitchensDetailPage extends StatefulWidget {
  final int index;
  const KitchensDetailPage({super.key, required this.index});

  @override
  State<KitchensDetailPage> createState() => _KitchensDetailPage();
}

class _KitchensDetailPage extends State<KitchensDetailPage> {
  bool _like = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: width,
        child: Stack(
          children: [
            Container(
              height: height * 0.55,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(kitchens[widget.index].image),
                fit: BoxFit.cover,
              )),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.9),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(top: height * 0.5),
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      kitchens[widget.index].nama,
                      style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        height: 50,
                        width: width,
                        child: ListView.builder(
                            itemCount: kitchens[widget.index].rate,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, int key) {
                              return Icon(
                                Icons.star,
                                color: Colors.yellow[900],
                                size: 34,
                              );
                            })),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Deskripsi",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      kitchens[widget.index].desc,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        letterSpacing: 0.5,
                        wordSpacing: 1.5,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Harga',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[500]),
                            ),
                            Text(
                              'Rp ${kitchens[widget.index].price}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                                    Color.fromARGB(255, 66, 194, 255)),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.fromLTRB(35, 15, 35, 15),
                            ),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 5, 101, 160)))),
                          ),
                          child: const Text(
                            "Beli",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ]),
            ),
            Positioned(
              left: 17,
              top: height * 0.06,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.keyboard_backspace,
                  size: 42,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              right: 30,
              top: height * 0.45,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _like = !_like;
                  });
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 5,
                            spreadRadius: 1)
                      ]),
                  child: Icon(
                    Icons.favorite,
                    size: 45,
                    color: (_like) ? Colors.red : Colors.grey[600],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
