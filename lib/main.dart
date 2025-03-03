import 'package:flutter/material.dart';

void main(){
  runApp(nested());
}

class nested extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Nested",
            style: TextStyle(
              color: Colors.white
              ),
            ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
      ),
    );
  }
}