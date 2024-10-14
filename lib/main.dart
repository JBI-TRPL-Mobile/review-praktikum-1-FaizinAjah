import 'package:flutter/material.dart';
import 'beranda_halaman.dart';
import 'detail_halaman.dart';
import 'tentang_halaman.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Buku',
      initialRoute: '/',
      routes: {
        '/': (context) => BerandaHalaman(),
        //'/detail': (context) => DetailHalaman(),
        //'/about': (context) => TentangHalaman(),
      },
    );
  }
}
