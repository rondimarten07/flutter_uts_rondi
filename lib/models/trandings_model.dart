class Trandings {
  Trandings({
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

  factory Trandings.fromJson(Map<String, dynamic> json) => Trandings(
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

final trandings = <Trandings>[
  Trandings(
      id: 1,
      nama: "Kamera HD",
      tipe: 'Teknologi',
      shortdesc: "Kamera HD Para Artis",
      desc:
          "Kamera HD dengan kualitas terbaik, dengan harga yang terjangkau, sudah terbukti oleh potografer",
      image: "assets/images/kamera_hd.jpg",
      rate: 5,
      price: "250.000"),
  Trandings(
      id: 2,
      nama: "Jam Alarm",
      tipe: 'Teknologi',
      shortdesc: "Jam pembangun tidur ",
      desc:
          "Jam alarm digunakan untuk membangunkan tidur, sekaligus pengingat waktu",
      image: "assets/images/jam_alarm.jpg",
      rate: 5,
      price: "280.000"),
  Trandings(
      id: 3,
      nama: "Google Asissten",
      tipe: 'Teknologi',
      shortdesc: "Google bisa bicara",
      desc:
          "Google asissten ini adalah produk smarthome yang kini sedang trands. dan banyak yang menggunakan",
      image: "assets/images/g_asisten.jpg",
      rate: 5,
      price: "220.000"),
  Trandings(
      id: 4,
      nama: "Rice Cooker",
      tipe: 'Dapur',
      shortdesc: "Pemasak nasi ",
      desc:
          "Rice Cooker adalah produk ter tranding di aplikasi kami, karena banyak yang beli dan banyak yang menggunakan",
      image: "assets/images/rice_cooker.jpg",
      rate: 5,
      price: "250.000"),
  Trandings(
      id: 5,
      nama: "Steamer",
      tipe: 'Dapur',
      shortdesc: "Masak tanpa minyak",
      desc:
          "Steamer adalah alat pemasak tanpa memerlukan minyak. tanpa ribet dan sehat",
      image: "assets/images/steamer.jpg",
      rate: 5,
      price: "180.000"),
];
