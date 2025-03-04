import 'package:flutter/material.dart';
import './screens/awal.dart';
import './screens/afterawal.dart';
void main(){
  runApp(app());
}

class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: awal(),
      routes: {
        awal.nameroute : (ctx) => awal(),
        afterawal.nameroute : (ctx) => afterawal(),
      },
    );
  }
}