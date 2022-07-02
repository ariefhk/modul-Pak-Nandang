import 'package:belajar_kelas/Pertemuan4/first.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Counters(),
      home: First(),
    );
  }
}

// class Counters extends StatefulWidget {
//   const Counters({Key? key}) : super(key: key);

//   @override
//   State<Counters> createState() => _CountersState();
// }

// class _CountersState extends State<Counters> {
//   var _counter = 0;
//   _countingFunc() {
//     setState(() {
//       _counter++;
    
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Counter'),
//         ),
//         body: Column(
//           children: [
//             Center(
//                 child: Text(
//               'You Have Been Clicked in ${_counter}',
//               style: TextStyle(fontSize: 20),
//             )),
//             FloatingActionButton(
//               onPressed: () => _countingFunc(),
//               child: Icon(Icons.add),
//             )
//           ],
//         ));
//   }
// }
