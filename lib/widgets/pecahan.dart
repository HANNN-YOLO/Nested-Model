import 'package:flutter/material.dart';
import 'package:untitled/screen/afterawal.dart';
// import '../screen/awal.dart';
import '../widgets/data_grid.dart';

class pecahan extends StatelessWidget {
  static const nameroute = '/pecahan';

  final String id;
  final String nama;
  final String gambar;

  pecahan(this.id, this.nama, this.gambar);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              afterawal.nameroute,
              arguments: id,
            );
          },
          child: Image.network(
            gambar,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
            backgroundColor: Colors.cyan,
            leading: IconButton(
                onPressed: () {
                  print("love");
                },
                icon: Icon(Icons.favorite_border_outlined)),
            title: Text(nama),
            trailing: IconButton(
              onPressed: () {
                print("terpencet");
              },
              icon: Icon(Icons.shopping_cart),
            )),
      ),
    );
  }
}
