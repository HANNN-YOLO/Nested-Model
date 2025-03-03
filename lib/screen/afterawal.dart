import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/inidata.dart';

class afterawal extends StatelessWidget{
  static const nameroute= '/afterawal';
  @override
  Widget build(BuildContext context) {
    final dataku= ModalRoute.of(context)?.settings.arguments as String;
    // final mydata = Provider.of<justdata>(context).findByid(dataku);
    final mydata = Provider.of<justdata>(context).inidata.firstWhere((dat) => dat.id == dataku);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text(
          "Detail Product",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Container(
        height: 500,
        color: Colors.purple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: NetworkImage("${mydata.gambar}"),
                  fit: BoxFit.cover,
                  alignment: Alignment.center
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Rp ${mydata.harga}"),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("${mydata.nama}"),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Deskripsi"),
                  ),
                  Container(
                    child: Text("${mydata.deskripsi}"),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}