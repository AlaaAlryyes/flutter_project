import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentListItem extends StatelessWidget {
  final String _doctorName;
  final String _date;
  AppointmentListItem(this._doctorName, this._date, {Key? key})
      : super(key: key);
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
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_date.toString()),
                        Text(
                          _doctorName,
                          style: const TextStyle(fontSize: 15, fontFamily: ""),
                        )
                      ]),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: const [
                  Icon(Icons.mode_edit_outline_outlined),
                  Text("Modify")
                ],
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
