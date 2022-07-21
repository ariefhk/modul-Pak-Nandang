import 'package:flutter/material.dart';

bool checkIndonesia = false;
bool checkInggris = false;
bool checkArab = false;
bool checkJawa = false;
bool checkMadura = false;
bool checkMandarin = false;
bool checkJepang = false;
bool checkKorea = false;
bool checkSunda = false;

class Bahasa extends StatefulWidget {
  const Bahasa({Key? key}) : super(key: key);

  @override
  State<Bahasa> createState() => _BahasaState();
}

class _BahasaState extends State<Bahasa> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Kemampuan Berbahasa'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: checkIndonesia, onChanged: (bool? value){
                  setState(()=> checkIndonesia = value!);
                }),
                Text('Indonesia')
              ],
            ),),
            Expanded(child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: checkInggris, onChanged: (bool? value){
                  setState(()=> checkInggris = value!);
                }),
                Text('Inggris')
              ],
            ),),
            Expanded(child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: checkArab, onChanged: (bool? value){
                  setState(()=> checkArab = value!);
                }),
                Text('Arab')
              ],
            ),),


          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: checkSunda, onChanged: (bool? value){
                  setState(()=> checkSunda = value!);
                }),
                Text('Sunda')
              ],
            ),),
            Expanded(child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: checkJawa, onChanged: (bool? value){
                  setState(()=> checkJawa = value!);
                }),
                Text('Jawa')
              ],
            ),),
            Expanded(child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: checkMadura, onChanged: (bool? value){
                  setState(()=> checkMadura = value!);
                }),
                Text('Madura')
              ],
            ),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: checkMandarin, onChanged: (bool? value){
                  setState(()=> checkMandarin = value!);
                }),
                Text('Mandarin')
              ],
            ),),
            Expanded(child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: checkJepang, onChanged: (bool? value){
                  setState(()=> checkJepang = value!);
                }),
                Text('Jepang')
              ],
            ),),
            Expanded(child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: checkKorea, onChanged: (bool? value){
                  setState(()=> checkKorea = value!);
                }),
                Text('Korea')
              ],
            ),),
          ],
        )
      ],
    );

  }
}
String cariBahasa(){
  String _bahasa = '';
  if(checkInggris){
    _bahasa += 'Inggris';
  }if(checkArab){
    _bahasa += 'Arab';
  }if(checkSunda){
    _bahasa += 'Sunda';
  }if(checkJawa){
    _bahasa += 'Jawa';
  }if(checkMadura){
    _bahasa += 'Madura';
  }if(checkMandarin){
    _bahasa += 'Mandarin';
  }if(checkJepang){
    _bahasa += 'Jepang';
  }if(checkKorea){
    _bahasa += 'Korea';
  }

  if(_bahasa.length > 0){
    _bahasa = _bahasa.substring(0, _bahasa.length-1);
  }

  return _bahasa;
}