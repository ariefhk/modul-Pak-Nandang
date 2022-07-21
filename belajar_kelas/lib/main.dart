import 'package:belajar_kelas/Pertemuan4/first.dart';
import 'package:belajar_kelas/Pertemuan5/home.dart';
import 'package:belajar_kelas/Pertemuan5/jenisKelamin.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Counters(),
      // home: First(),
      // home: JenisKelamin(),
      home: HomeScreen(),
    );
  }
}

class Counters extends StatefulWidget {
  const Counters({Key? key}) : super(key: key);

  @override
  State<Counters> createState() => _CountersState();
}

class _CountersState extends State<Counters> {
  var _counter = 0;
  _countingFunc() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              'You Have Been Clicked in ${_counter}',
              style: TextStyle(fontSize: 20),
            )),
            SizedBox(
              height: 100,
            ),
            FloatingActionButton(
              onPressed: () => _countingFunc(),
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
