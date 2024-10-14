import 'package:flutter/material.dart';

class BerandaHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ListTile(
            title: Text('Laut Bercerita'), 
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detail', arguments: {
                  'judul': 'Laut Bercerita',
                  'penulis': 'Leila S. Chudori',
                  'deskripsi': 'mengisahkan persahabatan, cinta, dan keluarga'
                });
              },
              child: Text('Detail'),
            ),
          ),
          ListTile(
            title: Text('Laskar Pelangi'),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detail', arguments: {
                  'judul': 'Laskar Pelangi',
                  'penulis': ' Andrea Hirata',
                  'deskripsi': 'mengisahkan tentang sebelas anak yang berasal dari keluarga miskin',
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
