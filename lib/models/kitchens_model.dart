class Kitchens {
  Kitchens({
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

  factory Kitchens.fromJson(Map<String, dynamic> json) => Kitchens(
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

final kitchens = <Kitchens>[
  Kitchens(
      id: 1,
      nama: "Blender JUS",
      tipe: 'Dapur',
      shortdesc: "Blender JUS Lucu",
      desc: "Cocok buat ibu-ibu yang seneng jus, dan harganya murah!!",
      image: "assets/images/blender_jus.jpg",
      rate: 5,
      price: "350.000"),
  Kitchens(
      id: 2,
      nama: "Rice Cooker",
      tipe: 'Dapur',
      shortdesc: "Rice Cooker original",
      desc: "Rice Cooker dengan Merek KRIS original dan harga terjangkau",
      image: "assets/images/rice_cooker.jpg",
      rate: 5,
      price: "250.000"),
  Kitchens(
      id: 3,
      nama: "Oven",
      tipe: 'Dapur',
      shortdesc: "Oven buatan korea",
      desc:
          "Oven ini berfungsi untuk mematangkan makan yang di masukan ke dalam oven. sekarang sedang promo, buruan beli!!",
      image: "assets/images/oven.jpg",
      rate: 5,
      price: "500.000"),
  Kitchens(
      id: 4,
      nama: "Microwave",
      tipe: 'Dapur',
      shortdesc: "Microwave buatan 2022",
      desc:
          "alat elektronik dapur yang menggunakan gelombang elektromagnetik, cocok buat para ibu rumah tangga nih!!",
      image: "assets/images/microwave.jpg",
      rate: 5,
      price: "350.000"),
  Kitchens(
      id: 5,
      nama: "Cooper",
      tipe: 'Dapur',
      shortdesc: "Penggiling bumbu",
      desc:
          "Chooper ini sangat cocok bagi ibu-ibu untuk mepercepat membuat masakan, karena dengan sekali putar, bumbu menjadi halus",
      image: "assets/images/chooper.jpg",
      rate: 5,
      price: "450.000"),
  Kitchens(
      id: 6,
      nama: "Toaster",
      tipe: 'Dapur',
      shortdesc: "Toaster Pemanggang Kue",
      desc:
          "Toaster cocok bagi pendagang kue karena praktis, cepat dan mudah. Lalu juga harga disini sangat murah!!",
      image: "assets/images/toaster.jpg",
      rate: 5,
      price: "550.000"),
];
