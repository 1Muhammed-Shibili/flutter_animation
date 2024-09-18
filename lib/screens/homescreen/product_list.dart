import 'package:flutter/material.dart';

class Product {
  final Color color;
  final String image;
  Product({required this.color, required this.image});
}

List<Product> products = [
  Product(
    color: const Color(0xff000000),
    image: 'assets/products/1.webp',
  ),
  Product(
    color: const Color(0xfffcecd0),
    image: 'assets/products/2.webp',
  ),
  Product(
    color: const Color(0xffb6d7e4),
    image: 'assets/products/3.webp',
  ),
];
