import 'package:flutter/material.dart';

class Product {
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Air Jordan",
      price: 678,
      size: 42,
      description: dummyText,
      image: "assets/images/tenis_1.png",
      color: const Color(0xFF73c3f9),
      ),
       
  Product(
      id: 2,
      title: "Air Jordan",
      price: 735,
      size: 40,
      description: dummyText,
      image: "assets/images/tenis_2.png",
      color: const Color(0xFFfe4650)),
  Product(
      id: 3,
      title: "Air Jordan",
      price: 814,
      size: 41,
      description: dummyText,
      image: "assets/images/tenis_3.png",
      color: const Color(0xFFf1b90d)),
  Product(
      id: 4,
      title: "Air Jordan",
      price: 469,
      size: 43,
      description: dummyText,
      image: "assets/images/tenis_4.png",
      color: const Color(0xFF928f96)),
  Product(
      id: 5,
      title: "Air Jordan",
      price: 994,
      size: 42,
      description: dummyText,
      image: "assets/images/tenis_5.png",
      color: const Color(0xFFcb395b)),
  Product(
    id: 6,
    title: "Air Jordan",
    price: 1284,
    size: 45,
    description: dummyText,
    image: "assets/images/tenis_6.png",
    color: const Color(0xFFa1a3a8),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
