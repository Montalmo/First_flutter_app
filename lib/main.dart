import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Application', style: TextStyle(
            fontSize: 17,
            fontFamily: 'Montserat_Alt',
          ),),
        centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Text('My application', style: TextStyle(
            fontSize: 14,
            color: Colors.blueGrey,
            fontFamily: 'Montserat_Alt',
            fontWeight: FontWeight.normal,
          ),),
        ),
       floatingActionButton: FloatingActionButton(
         onPressed: () {
           print('Clicked');
         },
         child: Text('OK'),
         backgroundColor: Colors.deepOrange,
       ),
      ),
    );
  }
}
