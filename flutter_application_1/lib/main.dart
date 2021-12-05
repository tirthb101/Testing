import 'package:flutter/material.dart';
import 'package:flutter_application_1/class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes = [
    Quote(author: '1', text: '2'),
    Quote(author: '3', text: '4'),
    Quote(author: '5', text: '6')
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Contact us',
          ),
          centerTitle: true,
        ),
        body: Column(
          children: quotes.map((e) => Text('${e.author} - ${e.text}')).toList(),
        ),
      ),
    );
  }
}
