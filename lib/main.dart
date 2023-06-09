import 'package:flutter/material.dart';
import 'quotes.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: "Simple Living Good Thinking Makes Life Worth Living.",
        author: "Amma"),
    Quote(text: "An Apple A Day Keeps The Doctor Away.", author: "Anonymous"),
    Quote(
        text: "Kill Them With Your Success And Bury Them With Your Smile.",
        author: "Vijay")
  ];
  Widget quotesTemplate(quote) {
    return Card(
      color: Colors.grey[800],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        children: [
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          FlatButton.icon(
            onPressed: () {

            },
            icon: Icon(Icons.delete),
            label: Text('Delete quote'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) {
          return quotesTemplate(quote);
        }).toList(),
      ),
    );
  }
}
