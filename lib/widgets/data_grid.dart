import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:untitled/providers/inidata.dart';
import '../providers/inidata.dart';
// import '../models/data.dart';
import './pecahan.dart';

class data_grid extends StatelessWidget {
  //
  // final List<data> mydata;
  //
  // data_grid({ required this.mydata});


  @override
  Widget build(BuildContext context) {
    final datas =Provider.of<justdata>(context);
    final datadata= datas.inidata;
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 5,
        ),
        itemCount: datadata.length,
        itemBuilder: (context, index) => pecahan(
              datadata[index].id!,
              datadata[index].nama!,
              datadata[index].gambar!,
            ));
  }
}
