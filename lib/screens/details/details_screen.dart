import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../models/product.dart';
import '../details/components/body.dart';


class DetailsScreen extends StatelessWidget {


final Product product;

 const DetailsScreen({ Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
    backgroundColor: product.color,
    elevation: 0,//sem elevação na parte debaixo da appbar
    leading: IconButton(//leading icone fica na parte esquerda do appBar
      icon: SvgPicture.asset("assets/icons/back.svg", color: Colors.white,),//SVG serve para colocar um icone SVG de fora 
      onPressed: () => Navigator.pop(context)
      ,),
      actions: <Widget>[//actions o icone fica na parte direita do appBar
        IconButton(onPressed: (){},
         icon: SvgPicture.asset("assets/icons/search.svg", color: Colors.white,),
         ),
         IconButton(onPressed: (){},
         icon: SvgPicture.asset("assets/icons/cart.svg", color: Colors.white,)
         ),
         const SizedBox(width: kDefaultPaddin / 2,)
      ],
    );
  }
}