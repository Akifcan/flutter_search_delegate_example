import 'package:flutter/material.dart';

class ProductModel {
  final String productName;
  final double price;
  final String brand;
  final bool touchable;
  final String image;

  ProductModel(
      {@required this.productName,
      @required this.price,
      @required this.brand,
      @required this.touchable,
      @required this.image});
}
