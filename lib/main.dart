import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "Laboratorul 2",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: WordCounter(),
      ),
    );
  }
}

class WordCounter extends StatefulWidget {
  @override
  _WordCounter createState() => _WordCounter();
}

class _WordCounter extends State<WordCounter> {
  int _wordcount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Introdu textul aici...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
              onChanged: (String str) {
                int temp = 0;
                List<String> ar = str.split(" ").where((word) => word.contains("a")).toList();
                temp = ar.length;
                setState(() {
                  _wordcount = temp;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Numarul de cuvinte cu litera A :  " + _wordcount.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}