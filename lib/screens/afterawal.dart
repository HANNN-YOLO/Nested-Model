import 'package:flutter/material.dart';

class afterawal extends StatelessWidget{
  static const nameroute = "after-awal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: 500,
              // color: Colors.redAccent,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: NetworkImage("https://i.pinimg.com/736x/0d/1a/27/0d1a27538c383440a7f663cb59b25d5e.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.center
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text("judul"),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20,
                top: 10,
                ),
              child: Text("Deskripsi"),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20,
                top: 10
              ),
              child: Text("Harga"),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
                left: 20,
              ),
              child: Text("Harga"),
            )
          ],
        ),
      ),
    );
  }
}