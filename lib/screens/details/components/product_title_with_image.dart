import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;

  const ProductTitleWithImage({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Nike",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title.toString(),
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kDefaultPaddin * 3,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Preço\n"), //\n  = quebra de linha
                    TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(
                                  product.image.toString(),
                                  fit: BoxFit.fitWidth,
                                ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
