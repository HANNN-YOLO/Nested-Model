import 'package:flutter/material.dart';
import './screens/awal.dart';

void main(){
  runApp(app());
}

class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: awal(),

    );
  }
}