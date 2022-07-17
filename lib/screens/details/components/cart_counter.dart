import 'package:flutter/material.dart';
import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlinedButton(icon: Icons.remove,press: (){
          if(numOfItems > 1){
            setState(() {
            numOfItems--;
          });
          }

        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),//padleft para colocar o zero do lado do numero 
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(icon: Icons.add, press: () {
          if(numOfItems < 10){
            setState(() {
            numOfItems++;
          });
          }

        })
      ],
    );
  }

  SizedBox buildOutlinedButton(

    {required IconData icon, required Function press}) {

    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: () => press(),
        child: Icon(icon),
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(13),
              ),
            ),
            padding: EdgeInsets.zero),
      ),
    );
  }
}