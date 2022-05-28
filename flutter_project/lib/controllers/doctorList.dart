import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/views/widgets/DoctorListItem.dart';
import '../models/Doctor.dart';

DatabaseReference ref = FirebaseDatabase.instance.ref();
List<Widget> loadDoctors() {
  List<Widget> list = [];
  ref.child("doctor").onValue.listen((event) {
    for (final child in event.snapshot.children) {
      list.add(DoctorListItem(Doctor.fromJson(jsonDecode(child.toString()))));
    }
  }, onError: (error) {});
  return list;
}

List<Doctor> searchDoctors(String specialty) {
  List<Doctor> list = [];
  ref.child("doctor").onValue.listen((event) {
    for (final child in event.snapshot.children) {
      Doctor d = Doctor.fromJson(jsonDecode(child.toString()));
      if (d.specialty == specialty) {
        list.add(d);
      }
    }
  }, onError: (error) {});
  return list;
}
