import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nested/models/data.dart';
import 'package:faker/faker.dart' as faker;
import 'package:nested/screens/afterawal.dart';


class awal extends StatelessWidget{
  static const nameroute = "awal";

  // final List<Data> mydata = 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              onTap: (){
                Navigator.of(context).pushNamed(afterawal.nameroute);
              },
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: NetworkImage("${mydata[index].gambar}"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center
                    )
                ),
              ),
              title: Text("${mydata[index].nama}"),
              subtitle: Text("${mydata[index].deskripsi}"),
              trailing: Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(" Jumlah :${mydata[index].jumlah}"),
                    ),
                    Container(
                      child: Text("Harga :${mydata[index].harga}"),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}