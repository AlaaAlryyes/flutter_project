import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/views/widgets/DatePicker.dart';
import 'package:flutter_project/views/widgets/SearchField.dart';
import 'package:flutter_project/views/widgets/selectionFields/SelectArea.dart';

import '../../main.dart';

class DoctorsFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Material(
                elevation: 10,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none),
                      hintText: "Doctor, Specialities..",
                      prefixIcon: const Icon(Icons.search)),
                ),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SelectArea()),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: DatePicker()),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Search'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[900]),
                    minimumSize: MaterialStateProperty.all(
                        Size(getScreenWidth(context) * 0.9, 50)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
              )),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    );
  }
}
