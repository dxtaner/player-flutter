import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(AppMyL());
}

class AppMyL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 218, 130),
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(
            'Player ?',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          ),
        ),
        body: PlayerPage(),
      ),
    );
  }
}

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  int defNo = 1;
  int midNo = 1;
  int forNo = 1;

  List<String> defansName = [
    'Semih Kaya',
    'İsmail Köybaşı',
    'Serdar Aziz',
    'Hasan Ali Kaldırım',
    'Vida'
  ];
  List<String> middleNames = [
    'İrfan Can',
    'Alexandru Cicaldau',
    'Talisca',
    'Dimitrios Pelkas',
    'Belhanda'
  ];
  List<String> forwardNames = [
    'Gomis',
    'Serdar Dursun',
    'Burak Yılmaz',
    'Michy Batshuayi',
    'Radamel Falcao'
  ];

  void playerRefresh() {
    setState(() {
      var rand = Random().nextInt(5) + 1;
      defNo = rand;
      midNo = rand;
      forNo = rand;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: playerRefresh,
                  child: Image.asset('assets/def_$defNo.jpg')),
            ),
          ),
          Text(
            defansName[defNo - 1],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 7,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: playerRefresh,
                  child: Image.asset('assets/mid_$midNo.jpg')),
            ),
          ),
          Text(
            middleNames[midNo - 1],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 7,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: playerRefresh,
                  child: Image.asset('assets/for_$forNo.jpg')),
            ),
          ),
          Text(
            forwardNames[forNo - 1],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 7,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
