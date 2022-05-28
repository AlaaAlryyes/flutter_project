import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicalRecord extends StatelessWidget {
  final String _name;
  final String _date;
  final String _url;

  MedicalRecord(this._name, this._url, this._date);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_date.toString()),
                        Text(
                          _name,
                          style: TextStyle(fontSize: 15, fontFamily: ""),
                        )
                      ]),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: const [Icon(Icons.download), Text("Download")],
              ),
            ),
          ],
        ),
        const Divider(
          indent: 15,
          endIndent: 15,
        )
      ],
    ));
  }
}
