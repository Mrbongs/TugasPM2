import 'package:flutter/material.dart';
import 'Test.dart';

class Biodiri extends StatelessWidget {
  final String nama;
  final String tanggal;
  final String alamat;
  final String jeniskelamin;
  final String agama;

  Biodiri(
      {@required this.nama,
      @required this.tanggal,
      @required this.alamat,
      @required this.jeniskelamin,
        @required this.agama,
      });

@override
Widget build(BuildContext context) {
  return Container(
    color: Colors.amber[200],
    height: 100,
    width: 1400,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Text("Nama: " + nama),
      Text("Tempat tanggal Lahir: " + tanggal),
      Text("Alamat: " + alamat),
      Text("Jenis Kelamin: " + jeniskelamin),
        Text("Agama: " + agama),
      ],
    ),
  );
}
}

