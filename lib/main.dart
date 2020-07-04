// 1) Create a new Flutter App (in this project) and output an AppBar and some
// text below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './texts.dart';
import 'control.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final texts = const [
    'God is the my strength',
    'I trust in Him',
    'And I don\'t depend on my skill',
    'I will be a flutter GDE',
    'And I will be heard',
  ];
  var i = 0;
  void changeText() {
    setState(() {
      i += 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment'),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [Texts(i, texts), Control(changeText)],
          ),
        ),
      ),
    );
  }
}
