import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description, price;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Stik PS4™",
    price: "320.000",
    description: deskripsi_ps,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/headphone.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Headphone Gaming",
    price: "400.000",
    description: deskripsi_headphone,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/kipas_mini.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Kipas Mini",
    price: "110.000",
    description: deskripsi_kipas_mini,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: "50.000",
    description: deskripsi_headphone,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String deskripsi_ps =
    "Stik PS 4 Original, bahan bagus awet tidak cepat rusak pada saat digunakan game-game hard control";

const String deskripsi_headphone =
    "Headphone gaming diciptakan bagi pemain game, karena tanpa delay suara, jernih dan sangat cocok bagi mendeteksi suara serangan lawan";

const String deskripsi_kipas_mini =
    "Kipas mini diciptakan bagi kalian yang kemana-mana pengen ada kipas, karena kipas mini mudah dibawa dan praktis";
