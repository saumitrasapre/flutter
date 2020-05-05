import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
home: WordList(),
));

class WordList extends StatefulWidget {
  @override
  _WordListState createState() => _WordListState();
}

class _WordListState extends State<WordList> {

  List<Quote> quotes=[
    Quote(text:'If a black cat crosses your path, it signifies that it is going somewhere', author: 'Moe the cat'),
    Quote(text:'A cat is an example of sophistication minus civilisation', author:'Anonymous' ),
    Quote(text: 'When a cat closes its eyes, there is a good chance that it cannot see',author: 'Luis the raccoon')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote){
          return QuoteCard(
              quote:quote,
              delete:(){
                setState(() {
                  quotes.remove(quote);
                });
              });
        }).toList(),
      ),
    );
  }
}

