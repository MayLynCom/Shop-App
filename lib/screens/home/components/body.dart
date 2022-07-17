import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
          const Categories(),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
                  //Se seu aplicativo Flutter precisar exibir uma visualização em grade de um número grande
                  //ou infinito de itens (uma lista de produtos obtidos da API, por exemplo),
                  //você deve usar GridView.builder() em vez de GridView()
                  //O builder() é chamado apenas para os itens que estão realmente visíveis para que o desempenho do seu aplicativo seja aprimorado.
                  itemCount: products.length,
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
                  itemBuilder: (context, index) => ItemCard(
                      product: products[index]),
                )),
          )
        ]);
  }
}
