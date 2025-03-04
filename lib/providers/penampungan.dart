import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../models/data.dart';
import 'package:faker/faker.dart' as faker;
import 'dart:math';

class Penampungan with ChangeNotifier{
  final List<Data> _mydata = List.generate(
    20, 
    (index){
      return Data(
        id: 1 + Random().nextInt(20),
        nama: faker.faker.person.name(),
        gambar: "https://picsum.photos/id/${index}/200/300",
        jumlah: 100000 + Random().nextInt(20000),
        harga: 5000000 + Random().nextInt(10000),
        deskripsi: faker.faker.lorem.sentence(),
        );
      }
    );

    List<Data> get mydata {
      return [..._mydata];
    }
}