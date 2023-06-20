// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../page/recipepage.dart';

class Listwidget extends StatelessWidget {
  List<String> imageData = [];
  List<String> name = [];

  Listwidget({super.key, required this.imageData, required this.name});

  @override
  Widget build(
    BuildContext context,
  ) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 5,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RecipePage(
                          imageData: imageData[index], name: name[index])));
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, top: 8, bottom: 5, right: 8),
                    child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                        ),
                        child: Image.network(
                          imageData[index],
                          height: 200,
                          width: 200,
                          fit: BoxFit.fill,
                        )),
                  ),
                  Positioned(
                      top: 3,
                      right: 3,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.red,
                          ),
                          onPressed: () {},
                        ),
                      ))
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 3, bottom: 3),
                  child: Center(
                    child: Text(
                      name[index],
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: imageData.length,
    );
  }
}
