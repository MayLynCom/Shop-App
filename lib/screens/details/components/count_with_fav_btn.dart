import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_counter.dart';

class CountWithFavBtn extends StatelessWidget {
  const CountWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        ElevatedButton(
          onPressed: () {},
          child: SvgPicture.asset("assets/icons/heart.svg"),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFfe4650),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
