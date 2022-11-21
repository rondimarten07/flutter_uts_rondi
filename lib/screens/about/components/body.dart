import 'package:flutter/material.dart';
import 'package:flutter_uts_rondi/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String DeskripsiApp =
        "Ron Eshop atau Rondi Electronik Shopping adalah aplikasi E-Commerce yang khusus menjual barang-barang elektronik, Kelebihan Ron Eshop dari E-Commerce lainnya adalah mereka mempunyai target pasar yang jelas yaitu orang-orang yang butuh barang elektronik. Karena berfokus mengembangkan barang elektronik menjadikan RonEshop memaksimalkan barang yang dijual";

    String nama = "Rondi";
    String npm = "20552011135";
    String matkul = "Pemrograman Mobile 2";
    String kelas = "TIF RP 20 A";
    return Scaffold(
        appBar: AppBar(title: Text("About")),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 8 * 23,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(blurRadius: 20, offset: Offset(0, 5)),
                  ],
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Ron Eshop",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        DeskripsiApp,
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Developer",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Nama:    " + nama,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            "NPM:   " + npm,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            "Matkul:    " + matkul,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            "Kelas:   " + kelas,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.copyright),
                              Text(
                                "Rondi 2022",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
