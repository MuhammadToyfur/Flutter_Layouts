import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // soal 3: padding 32 di semua sisi
      child: Row(
        children: [
          Expanded(
            // soal 1: letakkan Column di dalam Expanded
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // posisi di awal baris
              children: [
                // soal 2: baris pertama di dalam Container agar bisa beri padding bawah 8
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // warna abu-abu
                  ),
                ),
              ],
            ),
          ),
          // soal 3: ikon bintang merah dan teks "41"
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Muhammad Toyfur Dita Ramadan 2241760126',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
