import 'package:flutter/material.dart';
import 'package:latihan3/Biodiri.dart';
import 'package:latihan3/Pendidikan.dart';
import 'package:latihan3/Riwayat.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appName = 'Tugas Pem Mobile 3';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.amber[200],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: const MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
        body:  Column(
            children: <Widget>[
              Text(
                'MY CURICULUM VITAE',
                style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
              ),
              Image.asset('gambar/image01.jpg', width: 400, height: 200,),
              //Pemisah Jarak
              Divider(),
              //Memanggil Konten dengan Constructer Data Diri
              Biodiri(nama: "Mario Adi Nugroho", tanggal: "Bantul, 2 Maret 2000", alamat: "Jalan Teluk Gong Timur II",
                  jeniskelamin: "Laki-Laki", agama: "Katolik",),
              //Pemisah Jarak
              Divider(),
              //Memanggil Konten dengan Constructer Data Pekerjaan
             Riwayat(judulriwayat: "", riwayat1: "PT Sumber Abadi - Design", riwayat2: "PT Sumber Abadi - Content Creater",
                  riwayat3: "WO Manao Pictures - Videographer", riwayat4: "Photographer And Videography",),
              Divider(),
            Pendidikan(judulriwayat: "", riwayat1: "Negeri 09 Pagi", riwayat2: "Negeri 112 Jakut", riwayat3: "Stella Maris Jakarta")
            ]
        ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.yellow),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}