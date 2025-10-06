import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          /* soal 3 */
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

    //  buttonSection: baris berisi 3 tombol sejajar
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Bromo merupakan salah satu destinasi wisata paling ikonik di Indonesia. '
        'Terletak di kawasan Taman Nasional Bromo Tengger Semeru, gunung ini menawarkan pemandangan '
        'menakjubkan dengan lautan pasir luas dan kawah aktif yang dikelilingi pegunungan. '
        'Keindahan matahari terbit di puncak Penanjakan menjadi momen yang paling dinanti wisatawan. '
        'Udara sejuk, nuansa mistis, dan panorama alam yang megah menjadikan Bromo sebagai salah satu '
        'permata wisata Jawa Timur. '
        '\n\n Muhammad Toyfur Dita Ramadan - 2241760126',
        softWrap: true,
      ),
    );

    //  Layout utama
    return MaterialApp(
      title: 'Flutter layout: Muhammad Toyfur Dita Ramadan 2241760126',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          
          children: [
            Image.asset(
              'images/Bromo.jpeg', // pastikan nama folder dan file sesuai
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  //  Langkah 1: method helper _buildButtonColumn
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
