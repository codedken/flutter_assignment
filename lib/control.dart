import 'package:flutter/material.dart';

class Control extends StatelessWidget {
  final Function textHandler;
  Control(this.textHandler);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: textHandler,
      child: Text('Change Text'),
      color: Colors.blue,
      textColor: Colors.white,
    );
  }
}
