import 'package:flutter/material.dart';

class BerandaHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ListTile(
            title: Text('Flutter Basics'), 
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detail', arguments: {
                  'judul': 'Flutter Basics',
                  'penulis': 'John Doe',
                  'deskripsi': 'A comprehensive guide for Flutter development',
                });
              },
              child: Text('Detail'),
            ),
          ),
          ListTile(
            title: Text('Dart Mastery'),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detail', arguments: {
                  'judul': 'Dart Mastery',
                  'penulis': 'Jane Smith',
                  'deskripsi': 'Learn Dart programming language in-depth',
                });
              },
              child: Text('Detail'),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Tentang Aplikasi'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
    );
  }
}
