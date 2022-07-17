import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:shop_app/models/product.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'count_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //isso fornece altura e largura total da pagina
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  //height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      const CountWithFavBtn(),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      AddToCart(
                        product: product,
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}



