import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/product.dart';


class Description extends StatelessWidget {
  final Product product;

  const Description({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product.description.toString(),
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}