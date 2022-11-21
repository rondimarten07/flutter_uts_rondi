import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/models/kitchens_model.dart';
import 'package:flutter_uts_rondi/models/trandings_model.dart';
import 'package:flutter_uts_rondi/models/smarthome_model.dart';
import 'package:flutter_uts_rondi/screens/tranding/components/kitchens_tab.dart';
import 'package:flutter_uts_rondi/screens/tranding/components/trandings_tab.dart';
import 'package:flutter_uts_rondi/screens/tranding/components/smarthome_tab.dart';
import 'package:flutter_uts_rondi/widget/search_widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late List<Trandings> stranding;
  late List<Kitchens> skitchen;
  late List<Smarthome> lsmarthome;
  String query = '';

  @override
  void initState() {
    super.initState();
    stranding = trandings;
    skitchen = kitchens;
    lsmarthome = smarthome;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    void searchm(String query) {
      final stranding = trandings.where((trand) {
        final titleLower = trand.nama.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }).toList();

      final skitchen = kitchens.where((ktc) {
        final titleLower = ktc.nama.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }).toList();

      final lsmarthome = smarthome.where((smh) {
        final titleLower = smh.nama.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }).toList();

      setState(() {
        this.query = query;
        this.stranding = stranding;
        this.skitchen = skitchen;
        this.lsmarthome = lsmarthome;
      });
    }

    Widget buildSearch() => SearchWidget(
        hintText: "Cari Barang Elektronik", onChanged: searchm, text: query);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: height * 0.34,
                width: width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bg_fix.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.2),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  ),
                ),
              ),
              Positioned(
                bottom: 130,
                left: 20,
                child: RichText(
                  text: const TextSpan(
                      text: "Belanja barang elektronik?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: "\nya di Ron Eshop Saja!",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),
                        )
                      ]),
                ),
              )
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
            child: Container(
              width: width,
              height: 570,
              padding: const EdgeInsets.only(top: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: DefaultTabController(
                  length: 3,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        TabBar(
                          labelColor: Colors.black,
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                          unselectedLabelColor: Colors.grey[400],
                          unselectedLabelStyle: const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          tabs: const <Widget>[
                            Tab(
                              child: Text('Tranding'),
                            ),
                            Tab(
                              child: Text('Dapur'),
                            ),
                            Tab(
                              child: Text('SmartHome'),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        buildSearch(),
                        // ignore: sized_box_for_whitespace
                        Container(
                          height: height * 0.6,
                          child: TabBarView(
                            children: [
                              TrandingsTab(
                                trandingsList: this.stranding,
                              ),
                              KitchensTab(
                                kitchensList: this.skitchen,
                              ),
                              SmarthomeTab(
                                smarthomeList: this.lsmarthome,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
