import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/views/screens/DoctorDetails.dart';
import 'package:flutter_project/views/widgets/StarRating.dart';

import '../../models/Doctor.dart';

class DoctorListItem extends StatelessWidget {
  final Doctor _doctor;
  DoctorListItem(this._doctor, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => DoctorDetails())));
      },
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                DoctorProfilePhoto(),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(_doctor.name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    _doctor.specialty,
                    style: const TextStyle(fontSize: 10, color: Colors.black12),
                  ),
                  Text("Location",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black12,
                      )),
                  StarRating(_doctor.rating),
                ])
              ],
            ),
            const Divider(
              color: Colors.black12,
              thickness: 0.5,
              endIndent: 15,
              height: 15,
              indent: 15,
            )
          ],
        ),
      ),
    );
  }
}

class DoctorProfilePhoto extends StatelessWidget {
  final double width;
  final double height;
  DoctorProfilePhoto([this.width = 70, this.height = 70]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Icon(Icons.person),
      constraints: BoxConstraints(minHeight: height, minWidth: width),
      decoration: const BoxDecoration(
          color: Colors.black12,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      margin: const EdgeInsets.all(10),
    );
  }
}
