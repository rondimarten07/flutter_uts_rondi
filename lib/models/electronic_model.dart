import 'package:flutter/material.dart';

class Electronic {
  final String image, title, description, price;
  final int size, id;
  final Color color;
  Electronic({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Electronic> electronics = [
  Electronic(
      id: 1,
      title: "Stik PS 4 Biru",
      price: "320.000",
      size: 12,
      description: deskripsi_ps,
      image: "assets/images/ps4_console_blue_1.png",
      color: Color(0xFF3D82AE)),
  Electronic(
      id: 2,
      title: "Stik PS 4 Putih",
      price: "300.000",
      size: 8,
      description: deskripsi_ps,
      image: "assets/images/ps4_console_white_1.png",
      color: Color(0xFFD3A984)),
  Electronic(
      id: 3,
      title: "Kamera Hitam",
      price: "400.000",
      size: 10,
      description: deskripsi_kamera,
      image: "assets/images/kamera hitam.png",
      color: Color(0xFF3D82AE)),
  Electronic(
      id: 4,
      title: "Headphone",
      price: "700.000",
      size: 11,
      description: deskripsi_headphone,
      image: "assets/images/headphone.png",
      color: Color(0xFFD3A984)),
  Electronic(
      id: 5,
      title: "Jam Alarm",
      price: "250.000",
      size: 12,
      description: deskripsi_jam_alarm,
      image: "assets/images/jam_alarm_nb1.png",
      color: Color(0xFF3D82AE)),
  Electronic(
    id: 6,
    title: "Google Asisten",
    price: "700.000",
    size: 12,
    description: deskripsi_g_asisten,
    image: "assets/images/g_asisten_nb1.png",
    color: Color(0xFFD3A984),
  ),
];

const String deskripsi_ps =
    "Stik PS 4 Original, bahan bagus awet tidak cepat rusak pada saat digunakan game-game hard control";

const String deskripsi_headphone =
    "Headphone gaming diciptakan bagi pemain game, karena tanpa delay suara, jernih dan sangat cocok bagi mendeteksi suara serangan lawan";

const String deskripsi_kamera =
    "Kamera berkualitas HD dengan kualitas terbaik, dengan harga yang terjangkau, sudah terbukti oleh potografer";

const String deskripsi_jam_alarm =
    "Jam alarm digunakan untuk membangunkan tidur, sekaligus pengingat waktu";

const String deskripsi_g_asisten =
    "Google asissten ini adalah produk smarthome yang kini sedang trands. dan banyak yang menggunakan";
