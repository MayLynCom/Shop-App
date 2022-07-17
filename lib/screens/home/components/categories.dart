import 'package:flutter/material.dart';
import '../../../constants.dart';


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Air Jordan", "Air Max", "Air Force", "DownShifter"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal, //para lista rolar para horizontal
            itemCount: categories.length,
            itemBuilder: (context, index) =>
                buildCategories(index)), //procura depois
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          selectedIndex = index;
        });
      }),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kTextColor : kTextLightColor,//pesquisar sobre 
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
