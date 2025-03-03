import 'package:flutter/cupertino.dart';
import 'package:untitled/models/data.dart';
import 'dart:math';
import 'package:faker/faker.dart';
import '../models/screen/afterawal.dart';

class justdata with ChangeNotifier {
  List<data> _inidata = List.generate(90, (index) {
    return data(
      id: "id_${index + 1}",
      nama: faker.person.name(),
      deskripsi: faker.lorem.sentence(),
      gambar: "https://picsum.photos/id/$index/200/300",
      harga: 1000 + Random().nextInt(10000).toDouble(),
    );
  });

  List<data> get inidata {
    return [..._inidata];
  }

  // justdata findByid(String dataku){
  //   return _inidata.firstWhere((dat) => dat.id == dataku);
  // }
}
