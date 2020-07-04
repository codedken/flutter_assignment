import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final int textIndex;
  final List texts;
  Texts(this.textIndex, this.texts);
  @override
  Widget build(BuildContext context) {
    return Text(
      texts[textIndex],
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
