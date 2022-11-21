class Smarthome {
  Smarthome({
    required this.id,
    required this.nama,
    required this.tipe,
    required this.shortdesc,
    required this.desc,
    required this.image,
    required this.rate,
    required this.price,
  });

  int id;
  String nama;
  String tipe;
  String shortdesc;
  String desc;
  String image;
  int rate;
  String price;

  factory Smarthome.fromJson(Map<String, dynamic> json) => Smarthome(
        id: json["id"],
        nama: json["nama"],
        tipe: json["tipe"],
        shortdesc: json["shortdesc"],
        desc: json["desc"],
        image: json["image"],
        rate: json["rate"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "tipe": tipe,
        "shortdesc": shortdesc,
        "desc": desc,
        "image": image,
        "rate": rate,
        "price": price,
      };
}

final smarthome = <Smarthome>[
  Smarthome(
      id: 1,
      nama: "Smart Power",
      tipe: 'Smarthome',
      shortdesc: "Smart Power ori",
      desc:
          "Smart Power adalah terminal yang bisa dikendalikan lewat aplikasi smartphone",
      image: "assets/images/smart_power.jpg",
      rate: 4,
      price: "150.000"),
  Smarthome(
      id: 2,
      nama: "DoorlockFinger",
      tipe: 'Smarthome',
      shortdesc: "Doorlock Fingerprint",
      desc:
          "Doorlock Fingerprint adalah produk smarthome terpopuler sangat ini, karena membuat penggunaan doorlock jadi lebih efisien",
      image: "assets/images/doorlock_fingerprint.jpeg",
      rate: 5,
      price: "500.000"),
  Smarthome(
      id: 3,
      nama: "Lampu Pintar",
      tipe: 'Smarthome',
      shortdesc: "Lampu pintar keren",
      desc:
          "Lampu pintar adalah produk smarthome yang sekarang banyak orang minati, karena kepintaran fungsional lampu tersebut",
      image: "assets/images/lampu_pintar.jpeg",
      rate: 5,
      price: "355.000"),
  Smarthome(
      id: 4,
      nama: "Colokan Wifi",
      tipe: 'Smarthome',
      shortdesc: "Colokan memakai wifi ",
      desc:
          "Colokan wifi adalah produk smarthome yang sangat kreatif, karena bisa mencolok tanpa menyentuh alias nirkabel",
      image: "assets/images/colokan_wifi.jpeg",
      rate: 5,
      price: "70.000"),
];
