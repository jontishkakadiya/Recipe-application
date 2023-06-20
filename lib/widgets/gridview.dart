import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipe/page/recipepage.dart';

// ignore: must_be_immutable
class MansonryGridTile extends StatelessWidget {
  List<String> imageData = [];
  List<String> name = [];

  MansonryGridTile({super.key, required this.imageData, required this.name});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 6,
        itemCount: imageData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 3,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecipePage(
                              imageData: imageData[index],
                              name: name[index],
                            )));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                      ),
                      child: Image.network(imageData[index]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text(name[index])),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
