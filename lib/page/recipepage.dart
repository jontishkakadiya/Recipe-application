// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var imageData;
  // ignore: prefer_typing_uninitialized_variables
  var name;

  RecipePage({super.key, this.imageData, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        child: Card(
                          elevation: 10,
                          child: Image.network(
                            imageData,
                            alignment: Alignment.center,
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: '',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              children: [
                                TextSpan(
                                    text: 'Yields: 8',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: ' serving(s)'),
                                TextSpan(
                                    text: '\nPrep Time: 25',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: ' mins'),
                                TextSpan(
                                    text: '\nTotal Time: 25',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'mins'),
                                TextSpan(
                                    text: '\n\nIngrediants',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23)),
                                TextSpan(
                                    text: '\n1 ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'olive oil'),
                                TextSpan(
                                    text: '\n1/2',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'yellow onion, chopped'),
                                TextSpan(
                                    text: '\n1 ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'clove garlic, chopped'),
                                TextSpan(
                                    text:
                                        '\nKosher salt and freshly ground black pepper'),
                                TextSpan(
                                    text: '\n1 lb. ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: 'sweet sausage, casings removed'),
                                TextSpan(
                                    text: '\n2 tbsp. ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'tomato paste'),
                                TextSpan(
                                    text: '\n1 tsp. ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'dried oregano'),
                                TextSpan(
                                    text: '\n1 tsp. ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'dried basil'),
                                TextSpan(
                                    text: '\n1 ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: '(24-ounce) jar marinara sauce'),
                                TextSpan(
                                    text: '\n2 qt. ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'chicken stock'),
                                TextSpan(
                                    text: '\n8 oz. ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text:
                                        '(about 10) lasagna noodles, broken into bite-size pieces'),
                                TextSpan(
                                    text: '(\n1 ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text:
                                        '(10-ounce) package frozen chopped spinach, thawed or broken into chunks'),
                                TextSpan(
                                    text: '\n\nDirections ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23)),
                                TextSpan(
                                    text: '\n\nStep 1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple)),
                                TextSpan(
                                    text:
                                        '\nHeat oil in a large Dutch oven or pot over medium heat. Add onion and garlic. Season with salt and pepper. Cook, stirring occasionally, until softened, 4 to 6 minutes. Add sausage and cook, breaking it into pieces, until browned, 5 to 7 minutes. Add tomato paste, oregano, and basil, and cook, stirring, 1 minute. Add marinara and stock; bring to a boil. Add noodles and spinach. Cook until noodles are soft, 10 to 12 minutes. '),
                                TextSpan(
                                    text: '\n\nStep 2',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple)),
                                TextSpan(
                                    text:
                                        '\nMeanwhile, combine ricotta, mozzarella, and Pecorino in a bowl. Serve soup with 1 to 2 dollops of cheese mixture on top.')
                              ])),
                    )
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
