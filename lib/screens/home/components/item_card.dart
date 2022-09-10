import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import '../../details/details_screen.dart';

class ItemCard extends StatelessWidget {
  final Product product;

  const ItemCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    product: product,
                  )),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                  color: product.color, //acessando a cor do produto 0
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(
                //transição de uma tela pra outra
                tag: "${product.id}",
                child: Image.asset(product.image.toString()),
              ), //acessando a imagem do produto 0, precisa do toString pse n é nulla
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title.toString(),
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
