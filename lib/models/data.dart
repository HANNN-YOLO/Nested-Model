import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class data{
  static const nameroute = "/data";

  final String? id;
  final String? nama;
  final String? deskripsi;
  final String? gambar;
  final double? harga;
  final bool? favorite;

  data({
    @required this.id,
    @required this.nama,
    @required this.deskripsi,
    @required this.gambar,
    @required this.harga,
    this.favorite= false,
});
}