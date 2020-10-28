import 'package:flutter/material.dart';
import 'quotes.dart';

class quote_card extends StatelessWidget {
  Quote oneQuote;
  Function delete;


  quote_card({Quote myoneQuote , Function delete}) {
    oneQuote = myoneQuote;
    this.delete = delete;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '${oneQuote.text}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '${oneQuote.author}',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
              ),
            ),
            FlatButton.icon(
              onPressed: () {delete},
              icon: Icon(Icons.delete),
              label: Text('delete'),
            ),
          ],
        ),
      ),
    );
  }
}
