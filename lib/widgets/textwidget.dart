import 'package:flutter/material.dart';

// ignore: camel_case_types
class textwidget extends StatelessWidget {
  final String value;

  //final TextStyle? textStyle;

  const textwidget({
    super.key,
    required this.value,
    //this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11.0, top: 5, bottom: 5),
      child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            value,
            style: Theme.of(context)
                .textTheme
                .displayLarge, //TextStyle(fontSize: 69,fontWeight: FontWeight.bold)
          )),
    );
  }
}
