import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'components/body.dart';
//pacote SVG serve para colocar um icone SVG de fora

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0, //sem elevação na parte debaixo da appbar
      leading: IconButton(
        //leading icone fica na parte esquerda do appBar
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: kTextColor,
        ),
        //SvgPicture.asset("assets/icons/homem.png"),//SVG serve para colocar um icone SVG de fora
        onPressed: () {},
      ),
      actions: <Widget>[
        //actions o icone fica na parte direita do appBar
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: kTextColor,
            )),
        const SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
