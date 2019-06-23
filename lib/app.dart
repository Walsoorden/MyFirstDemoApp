import 'package:flutter/material.dart';

class Firstdemoapp extends StatefulWidget {
  createState() {
    return FirstdemoappStateKeeper();
  }
}

class FirstdemoappStateKeeper extends State<Firstdemoapp> {
  int counter = 0;
  
  final bgColor = const Color(0xFF99AAAB);      // light gray
  final appBarColor = const Color(0xFFE84342);    // red

  Widget build(context) {
    return MaterialApp(

    home: Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('Beneteau'),
        backgroundColor: appBarColor,
      ),
      body: Text(
        'Counter : ${counter}',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 96),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: bgColor,
        child: Icon(Icons.build, color: appBarColor,),
        onPressed:  (){
          setState(() {
            counter++;
          });
        },
      ),
    ),

  );

  }
}