import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/data.dart';
import 'package:faker/faker.dart';
import 'dart:math';
import '../widgets/data_grid.dart';
import '../providers/inidata.dart';

class awal extends StatelessWidget {
  static const nameroute = "/awal";
  // final List<data> mydata = List.generate(
  //   90,
  //   (index) {
  //     return data(
  //       id: "id_${index + 1}",
  //       nama: faker.person.name(),
  //       deskripsi: faker.lorem.sentence(),
  //       gambar: "https://picsum.photos/id/$index/200/300",
  //       harga: 1000 + Random().nextInt(10000).toDouble(),
  //     );
  //   },
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.cyan,
          centerTitle: true,
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/736x/be/2a/80/be2a8006a057494deb59904f4229823f.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                )),
          ),
          title: Container(
            child: Text(
              "Selamat Datang",
            ),
          )),
      body:
      data_grid(),
      // data_grid(mydata: mydata),
      // inidata(),
    );
  }
}
