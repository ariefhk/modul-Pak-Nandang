import 'package:flutter/material.dart';

String jenisKelaminDipilih = '';

class JenisKelamin extends StatefulWidget {
  const JenisKelamin({Key? key}) : super(key: key);

  @override
  State<JenisKelamin> createState() => _JenisKelaminState();
}

class _JenisKelaminState extends State<JenisKelamin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Jenis Kelamin'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: RadioListTile(
                    title: Text('Pria'),
                    value: 'Pria',
                    groupValue: jenisKelaminDipilih,
                    onChanged: (String? jenis) {
                      setState(() {
                        jenisKelaminDipilih = jenis!;
                      });
                    })),
            Expanded(
                child: RadioListTile(
                    title: Text('Wanita'),
                    value: 'Wanita',
                    groupValue: jenisKelaminDipilih,
                    onChanged: (String? jenis) {
                      setState(() {
                        jenisKelaminDipilih = jenis!;
                      });
                    }))
          ],
        )
      ],
    );
  }
}
