import 'package:flutter/material.dart';

String statusPernikahanDipilih = '';

class StatusPernikahan extends StatefulWidget {
  const StatusPernikahan({Key? key}) : super(key: key);

  @override
  State<StatusPernikahan> createState() => _StatusPernikahanState();
}

class _StatusPernikahanState extends State<StatusPernikahan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Status Pernikahan'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: RadioListTile(
                    title: Text('Kawin'),
                    value: 'Kawin',
                    groupValue: statusPernikahanDipilih,
                    onChanged: (String? jenis) {
                      setState(() {
                        statusPernikahanDipilih = jenis!;
                      });
                    })),
            Expanded(
                child: RadioListTile(
                    title: Text('Tidak Kawin'),
                    value: 'Tidak Kawin',
                    groupValue: statusPernikahanDipilih,
                    onChanged: (String? jenis) {
                      setState(() {
                        statusPernikahanDipilih = jenis!;
                      });
                    }))
          ],
        )
      ],
    );
  }
}
