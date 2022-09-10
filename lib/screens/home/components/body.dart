import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import 'item_card.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> categories = [
    "Air Jordan",
    "Air Max",
    "Air Force",
    "DownShifter",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text(
              "Nike",
              style: Theme.of(context)
                  .textTheme
                  .headline5, //headline5 = dentro de tema é o tamanho do texto
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
            child: SizedBox(
              height: 25,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  //para lista rolar para horizontal
                  itemCount: categories.length,
                  itemBuilder: (context, index) =>
                      buildCategories(index)), //procura depois
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: buildProducts(selectedIndex),
            ),
          )
        ]);
  }

  Widget buildProducts(int index) {
    List<Product> airJordan = products.sublist(0, 6);
    List<Product> airMax = products.sublist(6, 12);
    List<Product> airForce = products.sublist(12, 18);
    List<Product> downShifter = products.sublist(18, 24);

    switch (index) {
      case 1:
        return GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
          itemCount: airMax.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ItemCard(product: airMax[index]),
        );
      case 2:
        return GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
          itemCount: airForce.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ItemCard(product: airForce[index]),
        );
      case 3:
        return GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
          itemCount: downShifter.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ItemCard(product: downShifter[index]),
        );
    }

    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      //Se seu aplicativo Flutter precisar exibir uma visualização em grade de um número grande
      //ou infinito de itens (uma lista de produtos obtidos da API, por exemplo),
      //você deve usar GridView.builder() em vez de GridView()
      //O builder() é chamado apenas para os itens que estão realmente visíveis para que o desempenho do seu aplicativo seja aprimorado.
      itemCount: airJordan.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //SliverGridDelegateWithFixedCrossAxisCount
        // Cria layouts de grade com um número fixo de blocos no eixo cruzado.
        //Por exemplo, se a grade for vertical, esse delegado criará um layout com um número fixo de colunas.
        //Se a grade for horizontal, esse delegado criará um layout com um número fixo de linhas.
        crossAxisCount: 2,
        mainAxisSpacing: kDefaultPaddin,
        crossAxisSpacing: kDefaultPaddin,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) => ItemCard(product: airJordan[index]),
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
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index
                    ? kTextColor
                    : kTextLightColor, //pesquisar sobre
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: kDefaultPaddin / 4), //top padding 5
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
