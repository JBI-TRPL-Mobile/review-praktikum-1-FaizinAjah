import 'package:flutter/material.dart';

class DetailHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> bookDetails = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(bookDetails['judul'] ?? 'Detail Buku'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Judul: ${bookDetails['judul']}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Penulis: ${bookDetails['penulis']}'),
            SizedBox(height: 10),
            Text('Deskripsi:'),
            SizedBox(height: 5),
            Text(bookDetails['deskripsi'] ?? ''),
          ],
        ),
      ),
    );
  }
}
