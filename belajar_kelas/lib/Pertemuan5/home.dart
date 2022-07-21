import 'package:belajar_kelas/Pertemuan5/bahasa.dart';
import 'package:belajar_kelas/Pertemuan5/jenisKelamin.dart';
import 'package:belajar_kelas/Pertemuan5/statusPernikahan.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form and Controller'),
      ),
      body: Column(
        children: [JenisKelamin(), StatusPernikahan(),
        Bahasa()
        ],
      ),
    );
  }
}
