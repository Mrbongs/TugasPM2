import 'package:flutter/material.dart';
import 'Test.dart';

class Pendidikan extends StatelessWidget {
  final String judulriwayat;
  final String riwayat1;
  final String riwayat2;
  final String riwayat3;


  Pendidikan(
      {@required this.judulriwayat,
        @required this.riwayat1,
        @required this.riwayat2,
        @required this.riwayat3,
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
          Text("Data Riwayat Pendidikan:" + judulriwayat,
            style: TextStyle(fontWeight:FontWeight.w700),
    ),
          Text("SD " + riwayat1),
          Text("SMP " + riwayat2),
          Text("SMA " + riwayat3),
        ],
      ),
    );
  }
}

