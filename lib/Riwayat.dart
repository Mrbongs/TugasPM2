import 'package:flutter/material.dart';
import 'Test.dart';

class Riwayat extends StatelessWidget {
  final String judulriwayat;
  final String riwayat1;
  final String riwayat2;
  final String riwayat3;
  final String riwayat4;


  Riwayat(
      {@required this.judulriwayat,
        @required this.riwayat1,
        @required this.riwayat2,
        @required this.riwayat3,
        @required this.riwayat4,
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
      Text("Data Riwayat Kerja:" + judulriwayat,
      style: TextStyle(fontWeight:FontWeight.w700)),
      Text("Perusahaan " + riwayat1),
    Text("Perusahaan " + riwayat2),
    Text("Perusahaan " + riwayat3),
    Text("Freelance " + riwayat4),
    ],
    ),
    );
  }
}

