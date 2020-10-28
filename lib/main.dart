import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_template.dart';

void main() => runApp(Quotes());

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> myQuotes = [
    Quote(text: 'this is the first quote', author: 'jeewantha upul'),
    Quote(text: 'this is the second quote', author: ' upul'),
    Quote(text: 'this is the third quote', author: 'nimantha upul'),
    Quote(text: 'this is the fourth quote', author: 'jeewantha kumara'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Awesome Quotes'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: myQuotes
            .map((oneQuote) => quote_card(myoneQuote: oneQuote , delete:(){
              setState(() {
                myQuotes.remove(oneQuote);
              });
        }))
            .toList(),
      ),
    ));
  }
}
