import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: Example(),
  ));
}

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: 'Oscar Wilde'),
    Quote(
        text: 'The truth is rarely pure and never simple',
        author: 'Oscar Wilde'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List to Map'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) {
            return Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text('${quote.text} - ${quote.author}'),
            );
          }).toList(),
        ),
      ),
    );
  }
}
